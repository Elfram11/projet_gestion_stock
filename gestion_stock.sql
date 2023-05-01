-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 01 Mai 2023 à 13:05
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_stock_st_martin`
--

-- --------------------------------------------------------

--
-- Structure de la table `date`
--

CREATE TABLE `date` (
  `id` int(11) NOT NULL,
  `date_achat` date NOT NULL,
  `date_installation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

CREATE TABLE `emplacement` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `emplacement`
--

INSERT INTO `emplacement` (`id`, `site`) VALUES
(1, 'École Ferry'),
(2, 'École Nacry'),
(3, 'George Brassens'),
(4, 'Mairie - État Civil'),
(5, 'CCAS'),
(6, 'Stock'),
(7, 'Centre social éclaté'),
(8, 'École Jean Bart'),
(9, 'École Jacques Prévert'),
(10, 'École Anne Frank');

-- --------------------------------------------------------

--
-- Structure de la table `fonctionnelle`
--

CREATE TABLE `fonctionnelle` (
  `id` int(11) NOT NULL,
  `fonctionnelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fonctionnelle`
--

INSERT INTO `fonctionnelle` (`id`, `fonctionnelle`) VALUES
(1, 'Oui\r\n'),
(2, 'Non');

-- --------------------------------------------------------

--
-- Structure de la table `formulairestock`
--

CREATE TABLE `formulairestock` (
  `id` int(11) NOT NULL,
  `appareil` int(255) NOT NULL,
  `nom_marque` varchar(255) NOT NULL,
  `nom_model` varchar(255) NOT NULL,
  `nserie` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `ncommande` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `nom_marque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `marque`
--

INSERT INTO `marque` (`id`, `nom_marque`) VALUES
(1, 'Lenovo'),
(2, 'Konica'),
(3, 'Iiyama'),
(4, 'Logitech'),
(5, 'Samsung'),
(6, 'Lg'),
(7, 'HP'),
(8, 'Toshiba'),
(9, 'Terra'),
(10, 'ThinkPad'),
(11, 'Acer'),
(12, 'Apple (Mac)');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

CREATE TABLE `modele` (
  `id` int(11) NOT NULL,
  `nom_modele` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `numero_de_commande`
--

CREATE TABLE `numero_de_commande` (
  `id` int(11) NOT NULL,
  `ncommande` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `numero_de_serie`
--

CREATE TABLE `numero_de_serie` (
  `id` int(11) NOT NULL,
  `nserie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `nbr_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_appareil`
--

CREATE TABLE `type_appareil` (
  `id` int(11) NOT NULL,
  `appareil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type_appareil`
--

INSERT INTO `type_appareil` (`id`, `appareil`) VALUES
(1, 'PC portable'),
(2, 'PC fixe'),
(3, 'Imprimantes'),
(4, 'Tablette'),
(5, 'Casque'),
(6, 'Enceinte'),
(7, 'Écran interactif'),
(8, 'TBI'),
(9, 'Vidéo-projecteur'),
(10, 'Clavier'),
(11, 'Souris droitier'),
(12, 'Souris gaucher'),
(13, 'Souris ergo droite'),
(14, 'Souris ergo gauche'),
(15, 'Switch'),
(16, 'Antenne wifi'),
(17, 'Repose poignet'),
(18, 'Bras écran'),
(19, 'Scanner'),
(20, 'Téléphone fixe'),
(21, 'Webcam'),
(22, 'Téléphone IP'),
(23, 'PC Hydride');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `compte_identifiant` varchar(255) NOT NULL,
  `compte_password` varchar(255) NOT NULL,
  `compte_grade` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `compte_identifiant`, `compte_password`, `compte_grade`) VALUES
(1, 'Lambertsart', '$2y$10$NUa.m8B1Z8VfNRdV3QAy7ucf/zBL/pxUB7Vu8SL0oHcOAsY79ka/m', 'stagaire'),
(2, 'admin', '$2y$10$RGOM.Uu5y2K37bBWPxek8eNiCGpoITEvA7vPz33H.bwxpdntaiAme', 'admin'),
(3, 'admin2', '$2y$10$4W4mfcQdtOfPH.uOe4aWc.GZcxz9AXOKWj64ALzrAE1S7mv01XlP.', 'admin'),
(4, 'admin3', '$2y$10$ae8u3Eh1VZxZphRKvMTbZOGTPmcu.IzGRhh3.A9Y.T9JYxDEXlHX.', 'admin'),
(5, 'Utilisateur1', '$2y$10$bVCP9ETxoqJa3xzt3ecMwOgyU.8y09.sKJroT19flMcaicUki7VI6', 'Stagiaire'),
(6, 'root', 'root', 'Admin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fonctionnelle`
--
ALTER TABLE `fonctionnelle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formulairestock`
--
ALTER TABLE `formulairestock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `modele`
--
ALTER TABLE `modele`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `numero_de_commande`
--
ALTER TABLE `numero_de_commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `numero_de_serie`
--
ALTER TABLE `numero_de_serie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_appareil`
--
ALTER TABLE `type_appareil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `date`
--
ALTER TABLE `date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `emplacement`
--
ALTER TABLE `emplacement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `fonctionnelle`
--
ALTER TABLE `fonctionnelle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `formulairestock`
--
ALTER TABLE `formulairestock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `modele`
--
ALTER TABLE `modele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `numero_de_commande`
--
ALTER TABLE `numero_de_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `numero_de_serie`
--
ALTER TABLE `numero_de_serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `type_appareil`
--
ALTER TABLE `type_appareil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
