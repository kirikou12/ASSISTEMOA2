-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 04 Juillet 2014 à 14:24
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `amoa_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `agregat`
--

CREATE TABLE IF NOT EXISTS `agregat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `synthese` text NOT NULL,
  `titre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `agregat`
--

INSERT INTO `agregat` (`id`, `synthese`, `titre`) VALUES
(1, 'C''est une agregat pour les demandes 1, 2 et 3.', 'Groupe de yoummi yoummi!'),
(2, 'C''est une agregat pour les demandes 1, 2 et 3.', 'Groupe de yoummi yoummi!'),
(3, 'C''est une agregat pour les demandes 1, 2 et 3.', 'Groupe de yoummi yoummi!'),
(4, '1er teste de fusion des demandes', 'Teste 1'),
(5, 'un dexieme teste de fusion!', 'Teste 2'),
(6, 'teste 3', 'teste3'),
(7, 'ffffffffff', 'ddddd'),
(8, 'fffffffff', 'fffffff'),
(9, 'ddddddddd', 'ffffff'),
(10, 'just pour m''ammuser', 'avant dernier groupe'),
(11, 'Et voilà :)', 'Dernier fusion'),
(12, 'Avant je m''amsais :)\r\nJe vous ai eu, c celui là qui est le dernier fusion', 'Dernier fusion pour de vrai '),
(13, 'Je me suis bien leurré, à cause d''une erreur de programmation.', 'il faut pas se leurrer'),
(14, 'fffff', 'ffffff'),
(15, 'On essaie de fusioner les demande (2)', 'Fusion 2'),
(16, 'Demande unitile \r\nc t seuelemnt pour tester ', 'Fusion 2'),
(17, 'Ces demandes ont été faites pour tester la création d''une demande, donc ils sont pas utiles!', 'Demandes non utiles'),
(18, 'Ces demandes ont été faites pour tester la création d''une demande, donc ils sont pas utiles!', 'Demandes non utiles'),
(19, 'Demandes non utiles\r\nutilisée pour le teste de la création  d''un agrégat!', 'Demandes non utiles'),
(20, 'Ces demandes sont agrégées pour tester le nouveau look d''un agregat :)', 'Agreagtion'),
(21, '<br> sujetjqskfjqs ', 'ekjzekzj'),
(22, 'Nothing at all', 'Demandes non utiles');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE IF NOT EXISTS `avis` (
  `avisId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) NOT NULL,
  `userId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  PRIMARY KEY (`avisId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `chapitre`
--

CREATE TABLE IF NOT EXISTS `chapitre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idManuel` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `titre` varchar(300) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `chapitreParent` int(11) DEFAULT NULL,
  `indx` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `chapitre`
--

INSERT INTO `chapitre` (`id`, `idManuel`, `numero`, `titre`, `description`, `chapitreParent`, `indx`) VALUES
(1, 2, 1, 'CHP1', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', NULL, 0),
(2, 2, 2, 'CHP2', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', NULL, 1),
(3, 2, 3, 'CHP3', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', NULL, 2),
(4, NULL, 11, 'CHP11', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 1, 0),
(5, NULL, 12, 'CHP12', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 1, 1),
(8, NULL, 121, 'CHP121', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 5, 0),
(9, NULL, 122, 'CHP122', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 5, 1),
(10, NULL, 123, 'CHP123', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 5, 2),
(11, NULL, 1231, 'CHP1231', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 10, 0),
(12, NULL, 1232, 'CHP1232', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 10, 1),
(13, NULL, 31, 'CHP31', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 3, 0),
(14, NULL, 32, 'CHP32', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 3, 1),
(15, NULL, 33, 'CHP33', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 3, 2),
(16, NULL, 34, 'CHP34', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 3, 3),
(17, NULL, 35, 'CHP35', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 3, 4),
(18, NULL, 36, 'CHP36', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 3, 5),
(19, NULL, 12321, 'CHP12321', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 12, 0),
(20, NULL, 12322, 'CHP12322', '', 12, 1),
(21, NULL, 123221, 'CHP123221', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 19, 0),
(22, NULL, 123222, 'CHP123222', 'Une des techniques les plus efficaces en positionnement CSS c’est de donner à un élément un mode de rendu différent de celui par défaut. Typiquement, il s''agit de passer un élément de type en-ligne en rendu de type bloc (display: block), ou à l''inverse des éléments de type bloc en rendu de type en-ligne (display: inline). Cela permet par exemple de faire un menu horizontal à partir du code HTML d''une liste à puces', 19, 1);

-- --------------------------------------------------------

--
-- Structure de la table `choix`
--

CREATE TABLE IF NOT EXISTS `choix` (
  `choixId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) NOT NULL,
  `questionId` int(11) NOT NULL,
  PRIMARY KEY (`choixId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `choix`
--

INSERT INTO `choix` (`choixId`, `content`, `questionId`) VALUES
(1, 'le ministère de la Défense', 5),
(2, 'le ministère de l’Information', 5),
(3, 'le ministère de l’Industrie', 5),
(4, 'Les pays du Tiers Monde les moins avancés', 6),
(5, 'Les pays du Tiers Monde en cours de développement', 6),
(6, 'Kiki', 7),
(7, 'Koukou', 7),
(8, 'kaka', 7),
(9, 'Kiki', 8),
(10, 'koukou', 8),
(11, 'kaka', 8),
(12, 'Kiki', 9),
(13, 'koukou', 9),
(14, 'Kiki', 10),
(15, 'koukou', 10),
(16, 'Kiki', 11),
(17, 'Kiki', 11),
(18, 'Kiki', 12),
(19, 'kakaka', 12);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `discussionId` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`commentId`, `content`, `discussionId`, `author`, `date`) VALUES
(41, 'Comment1', 9, 1, '2013-12-01 00:21:09'),
(43, 'Comment3', 9, 1, '2013-12-10 06:00:20'),
(44, 'Comment2', 9, 1, '2013-12-09 23:00:00'),
(45, 'content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1', 1, 1, '2014-02-09 13:45:25'),
(46, 'pas tout à fait vrai', 1, 1, '2014-02-09 13:46:09'),
(47, 'Le lot doit être... etc.', 1, 1, '2014-02-10 11:36:05'),
(48, 'Non, je pense pas que le problème vient du fait que .... etc.', 1, 2, '2014-02-10 11:41:50'),
(49, 'ffffffffffff', 4, 2, '2014-02-19 10:48:05'),
(50, 'Teste cmnt', 1, 1, '2014-03-03 14:06:34'),
(51, 'Teste 2 comnt', 1, 1, '2014-03-03 14:07:13'),
(52, 'Oui, c''est totalement possible!', 24, 1, '2014-03-03 14:23:39'),
(53, 'On aimerait bient que ça soit fait le plus vite possible quand même :)', 24, 1, '2014-03-03 14:34:12'),
(54, 'Teste 3 comment :)', 1, 1, '2014-03-03 15:26:53'),
(55, 'Commentaire', 6, 1, '2014-03-26 15:41:45'),
(56, 'ffff', 19, 1, '2014-05-06 12:39:36'),
(57, 'ffffddddddd', 17, 1, '2014-05-06 12:51:32'),
(58, 'dddddd', 17, 1, '2014-05-06 12:52:07'),
(59, 'ssss', 17, 1, '2014-05-06 12:53:29'),
(60, 'ssssssssss', 17, 1, '2014-05-06 12:59:27'),
(61, '<h2><b>ssssssssss&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sssssssssssss <span style="color: rgb(0, 255, 0);">sssssssssssss <span style="color: rgb(255, 255, 0);">ssssssssssssssssss <span style="color:rgb(255,0,0);">sssssssssssssssss</span></span></b></h2>', 17, 1, '2014-05-06 13:00:13'),
(62, 'Il faut <span style="color:rgb(255,0,0);">respecter </span>les <u>trois points</u> suivant:<br><ol><li>Point numéro 1</li><li>Point numéro 2</li><li>Point numéro 3<br></li></ol>', 1, 1, '2014-05-06 13:19:07'),
(63, 'Il faut <span style="color:rgb(255,0,0);">respecter </span>les <u>trois points</u> suivant:<br><ol><li>Point numéro 1</li><li>Point numéro 2</li><li>Point numéro 3<br></li></ol>', 1, 1, '2014-05-06 13:19:12'),
(64, '<ol><li>Q</li><li>Q</li><li>Q</li><li>A<br></li></ol>', 4, 1, '2014-05-06 13:28:07'),
(65, 'A<br>Z<br><span style="font-size:24px;">R</span><br>', 4, 1, '2014-05-06 13:28:24'),
(66, 'Un <b>commentaire</b> de <span style="color:rgb(255,153,0);">test</span> ( n''importe koi)&nbsp; ', 1, 1, '2014-06-25 13:36:55'),
(67, 'cvcvcv', 1, 2, '2014-06-27 13:55:28'),
(68, 'Comment test 1&nbsp;', 86, 2, '2014-06-30 10:11:32'),
(69, 'ssss', 87, 2, '2014-06-30 10:22:21'),
(70, ' ', 87, 2, '2014-06-30 10:22:27'),
(71, 'sssss', 87, 2, '2014-06-30 10:23:30'),
(72, 'ssssssssssssssssssssss', 87, 2, '2014-06-30 10:26:34'),
(73, '<h1>tesssssssssssss</h1>', 87, 2, '2014-06-30 12:14:06'),
(74, ' ', 87, 2, '2014-06-30 12:14:08'),
(75, '2X<sup>2 </sup>+ 3X + 2 = 0<br><sup><br></sup> ', 81, 1, '2014-07-04 10:34:43');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE IF NOT EXISTS `demande` (
  `demandeId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(24) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `author` int(11) NOT NULL,
  `responsable` int(11) NOT NULL,
  PRIMARY KEY (`demandeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `demande`
--

INSERT INTO `demande` (`demandeId`, `title`, `content`, `author`, `responsable`) VALUES
(5, 'ddddddd', 'fffffffffff', 1, 2),
(6, 'ddddddd', 'ffffff', 1, 2),
(7, 'dddddddddd', 'dddddd', 1, 2),
(8, 'dddddddd', 'ddddddddddd', 1, 1),
(9, 'struts', 'Je me permet de remonter ce sujet, qui est assez vieux, mais qui me semble coller au mieux avec mon problème :\n\nPour mon boulot, je suis en train de repasser sur le travail d''un ancien employé, qui a codé une application web en struts.\n\nUne partie de mon travail consiste en dépoussiérer le code.', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `demande_redmine`
--

CREATE TABLE IF NOT EXISTS `demande_redmine` (
  `demandeId` int(11) NOT NULL AUTO_INCREMENT,
  `demandeIdRMINE` int(11) NOT NULL,
  `projet` varchar(124) NOT NULL,
  `sujet` varchar(5000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `tracker` varchar(50) NOT NULL,
  `statut` varchar(24) NOT NULL,
  `priorite` varchar(25) NOT NULL,
  `criticite` varchar(24) NOT NULL,
  `versionCible` varchar(10) NOT NULL,
  `versionApplication` varchar(74) NOT NULL,
  `echeance` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tempsEstime` int(11) NOT NULL,
  `tempsVendu` int(50) NOT NULL,
  `pourcentageRealise` varchar(24) NOT NULL,
  `cree` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ferme` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `miseAJours` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `debut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auteur` int(11) NOT NULL,
  `assigneA` int(11) NOT NULL,
  `agregat` int(11) DEFAULT NULL,
  PRIMARY KEY (`demandeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Contenu de la table `demande_redmine`
--

INSERT INTO `demande_redmine` (`demandeId`, `demandeIdRMINE`, `projet`, `sujet`, `description`, `tracker`, `statut`, `priorite`, `criticite`, `versionCible`, `versionApplication`, `echeance`, `tempsEstime`, `tempsVendu`, `pourcentageRealise`, `cree`, `ferme`, `miseAJours`, `debut`, `auteur`, `assigneA`, `agregat`) VALUES
(1, 3369, 'CRRA - Gertrude - Support', 'lot non valide', ' Le lot correspondant au fichier joint est déclaré comme non valide ; je ne parviens pas à détecter l''anomalie. Le lot comportait bien les fichiers merimee, palissy vides et le fichier ok, ainsi que les images', 'Assistance', 'Commentaire', 'Normal', 'Majeur', '', '1.0.1', '2013-08-26 22:00:00', 0, 0, '0.0', '2013-07-25 07:32:00', '2014-02-09 10:17:19', '2013-07-29 13:36:00', '2013-07-24 22:00:00', 10, 1, NULL),
(2, 3360, 'CRRA - Gertrude - Support', 'Reprise de données', 'Nous avons installés la V1.0.3 le 23/07/13 sur notre environnement de test. Les personnalisations de nos scripts ont bien été reconduit sur les scripts livrés avec la V1.0.3.\nJe viens de tenter une reprise de données sur ce serveur, et lorsque j''effectue la prepare_reprise.sh et import_reprise.sh je n''obtiens aucun résultat, ni message d''erreur.\nPouvez-vous m''indiquer les points à vérifier, ou est-ce un problème connu en V1.0.3', 'Assistance', 'Commentaire', 'Normal', 'Majeur', '', '1.0.3', '2014-02-09 10:17:19', 0, 0, '0.0', '2013-07-24 14:15:00', '2014-02-09 10:17:19', '2013-07-29 14:02:00', '2013-07-23 22:00:00', 10, 1, 22),
(3, 3302, 'CRRA - Gertrude - Support', 'Java Fatal error sur le site diffusion', 'Notre serveur de diffusion ne répond plus. Lorsque j''execute la commande "service gertrude status", j''obtiens le message suivant: "java est mort mais le fichier pid existe" \n\n17 juil. 2013 11:01:46 it.geosolutions.imageio.gdalframework.GDALUtilities loadGDAL\nATTENTION: Failed to load the GDAL native libs. This is not a problem unless you need to use the GDAL plugins: they won''t be enabled.java.lang.UnsatisfiedLinkError: no gdaljni in java.library.path\n17 juil. 2013 11:01:47 it.geosolutions.util.KakaduUtilities loadKakadu\nATTENTION: Failed to load the Kakadu native libs. This is not a problem unless you need to use the Kakadu plugin: it won''t be enabled. java.lang.UnsatisfiedLinkError: no kdu_jni in java.library.path\n#\n# A fatal error has been detected by the Java Runtime Environment:\n#\n#  Internal Error (javaCalls.cpp:59), pid=18756, tid=47610426169664\n#  guarantee(thread->is_Java_thread()) failed: crucial check - the VM thread cannot and must not escape to Java code\n#\n# JRE version: 6.0_35-b10\n# Java VM: Java HotSpot(TM) 64-Bit Server VM (20.10-b01 mixed mode linux-amd64 compressed oops)\n# An error report file with more information is saved as:\n# /usr/local/gertrude/gertrude-deploy-1.0.2/hs_err_pid18756.log\n#\n# If you would like to submit a bug report, please visit:\n#   http://java.sun.com/webapps/bugreport/crash.jsp\n#\n\nEn supprimant le fichier de locks la plateforme redémarre, cependant nous avons actullement de très gros problèmes de stabilité.\n', 'Assistance', 'Nouveau', 'Normal', 'Critique', '', '1.0.2', '2013-07-16 22:00:00', 0, 0, '0.0', '2013-07-17 09:25:00', '2014-02-09 10:17:19', '2013-07-17 09:33:00', '2013-07-16 22:00:00', 10, 1, 3),
(4, 3300, 'CRRA - Gertrude - Support', 'Logs Jetty', 'Je viens me rendre compte que les fichiers de logs du serveur jetty étaient mal nommés. En effet, j''imagine que la convention de nommage n''a pas été correctement établie puisqu''actuellement ceux-ci sont nommé de la manière suivantes: ".AAAAmm-dd-?" (ex:.20130711-19.log)\n\nJ''attire votre attention sur le fait que ça n''est vraiement pas sérieux...', 'Anomalie', 'En cours', 'Normal', 'Critique', '', '1.0.2', '2014-02-09 10:17:19', 0, 0, '0.0', '2013-07-17 08:07:00', '2014-02-09 10:17:19', '2013-07-22 07:37:00', '2013-07-16 22:00:00', 12, 1, 22),
(5, 3283, 'CRRA - Gertrude - Support', 'Le rapport d''exécution du Script d''indexation(en DIFF) comporte des erreurs', '- Dans la collection LienInterDossier, 7 dossiers n''ont pas été trouvés et c''est normal puisque le choix a été fait de ne pas les publier.\n- Dans la collection dossier, les illustrations qui sortent en erreur sont celles qui n''ont pas non plus été publié', 'Evolution', 'En cours', 'Normal', '', '', '1.0.2', '2014-02-09 10:17:20', 0, 0, '0.0', '2013-07-15 22:43:00', '2014-02-09 10:17:20', '2013-07-17 11:51:00', '2013-07-15 22:00:00', 13, 1, 8),
(6, 3261, 'CRRA - Gertrude - Support', 'reprise des données', 'Sur notre environneme de test (en 1.0.2) lors de la reprise des données, le champ "Nature du dossier", pour les dossiers d''oeuvre architecture et objets, prend la valeur : ''départemental''\n \nSur le site de Production (RC16),  on obtiens la valeur (qui correspond au lexique en vigueur) : ''dossier individuel''. Cette dernière situation est celle qui nous convient.\n\nCette "anomalie" avait-elle été identifiée ? était-ce une demande d''évolution ?\n\nBien cordialeemnt\n \n', 'Assistance', 'Commentaire', 'Normal', 'Mineur', '', '1.0.2', '2014-02-09 10:17:20', 0, 0, '0.0', '2013-07-12 08:40:00', '2014-02-09 10:17:20', '2013-07-12 08:48:00', '2013-07-11 22:00:00', 14, 1, 8),
(7, 3247, 'CRRA - Gertrude - Support', 'transformation des exports xml en fichiers plats (6 feuilles de transformation => le service gertrude plante)', 'Si je place les 6 feuilles de transformation le service gertrude plante...\n- Peut-on avoir une assistance pour l''analyse des logs\n- Voir mon mail à Gérôme pour le compte redmine supplémentaire\n\n', 'Anomalie', 'En cours', 'Normal', 'Majeur', '', '1.0.2', '2014-02-09 10:17:20', 0, 0, '0.0', '2013-07-11 07:12:00', '2014-02-09 10:17:20', '2013-07-17 07:54:00', '2013-07-10 22:00:00', 15, -1, 8),
(8, 3146, 'CRRA - Gertrude - Support', 'Inter dossier', 'Bonjour,\n\nJe n''arrive pas à lancer le script de lien inter dossier se trouvant dans /usr/local/gertrude/bin/mongo\n\nretour del''erreur : [root@lxcintgtd mongo]# sh remove-liens-inter-dossiers.sh lxcintgtd.cr-picardie.net gertrude\nSuppression des liens Inter-dossier sans qualification et crÃ©Ã©s par reprise\nThu Jul  4 09:48:33 Error: couldn''t connect to server lxcintgtd.cr-picardie.net shell/mongo.js:86\nexception: connect failed\n[root@lxcintgtd mongo]#\n\nComment faire ?\nTout fonctionne correctement sur le serveur de recette.\n\nMErci de votre aide\n\nCordialement\n\nDominique TUCOULOU\nCOnseil Régional de Picardie\n', 'Assistance', 'Commentaire', 'Normal', 'Majeur', '', '1.0.2', '2014-02-09 10:17:20', 0, 0, '0.0', '2013-07-04 07:52:00', '2014-02-09 10:17:20', '2013-07-08 09:43:00', '2013-07-03 22:00:00', 16, -1, 14),
(9, 3098, 'CRRA - Gertrude - Support', 'Notice objet et archi, lien partie constituante', 'Lorsqu''une notice objet ou architecture est en modification, et que l''on ajoute un lien partie constituante, si on abandonne la modification de la notice, les liens quant à eux sont définitivement enregistrés.\n\nMême si je comprends la démarche, c''est troublant de valider définitivement un attribut (le lien) d''un objet (la notice) dont les modifications sont susceptibles d''être abandonnées. \n\nY-a-t''il moyen d''améliorer la présentation de cette étape ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.1', '2014-02-09 10:17:20', 0, 0, '0.0', '2013-07-01 14:38:00', '2014-02-09 10:17:20', '2013-07-01 14:38:00', '2013-06-30 22:00:00', 17, 1, 13),
(10, 3097, 'CRRA - Gertrude - Support', 'champs historique et description : sauts de ligne non repris dans les pdf /site de diffusion', 'Pour ces champs de texte libre, les sauts de ligne sont bien repris à l''import des notices xml dans l''appli de production mais n''apparaissent toujours pas dans les pdf et sur le site de diffusion. Je ne me souviens pas des décisions prises à ce sujet (est-ce que cela dépend de la feuille de style ?).\nMerci.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.1', '2014-02-09 10:17:20', 0, 0, '0.0', '2013-07-01 14:03:00', '2014-02-09 10:17:20', '2013-07-01 14:03:00', '2013-06-30 22:00:00', 18, -1, 13),
(11, 3010, 'CRRA - Gertrude - Support', 'tableau de bord', 'A partir de la liste d''erreurs contenues dans le tableau de bord, je peux en principe accéder aux ressources correspondantes (en cliquant sur le message d''erreur). Sur les lignes qui figurent dans le document en pièce jointe, j''obtiens un message d''erreur (fichier joint) et Gertrude "plante" si je puis m''exprimer ainsi : pouvez-vous me dire pourquoi?', 'Assistance', 'Commentaire', 'Normal', 'Critique', '', '1.0.1', '2014-02-09 10:17:20', 0, 0, '0.0', '2013-06-21 07:55:00', '2014-02-09 10:17:20', '2013-07-08 06:50:00', '2013-06-20 22:00:00', 19, 1, 13),
(12, 2943, 'CRRA - Gertrude - Support', 'recherche experte sur liens web', 'Il est impossible de rechercher les dossiers comprenant un lien web.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.1', '2014-07-03 13:20:15', 0, 0, '0.0', '2013-06-16 22:46:00', '2014-02-09 10:17:20', '2013-06-17 11:10:00', '2013-06-16 22:00:00', 12, -1, 13),
(13, 2942, 'CRRA - Gertrude - Support', 'flux RSS et outil de mesure et de statistique', 'Comment peut-on intégrer des trucs du genre flux rss et google analytics dans le site de diffusion ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.1', '2014-07-03 13:20:21', 0, 0, '0.0', '2013-06-16 22:44:00', '2014-02-09 10:17:20', '2013-06-16 22:44:00', '2013-06-16 22:00:00', 5, -1, 13),
(14, 2878, 'CRRA - Gertrude - Support', 'DBObject of size 20093684 is over Max BSON size 16777216', 'Contexte : \n- Nous avons 73946 dossiers en base\n- Nous avons 250113 illustrations en base.\n\nLorsque l''admiistrateur de données se connecte, il a les messages d''erreur suivant :\n"Une erreur est survenue. Essayez de recharger la page :\nErreur serveur: org.apache.solr.client.solrj.SolrServerException: Error executing query"\nou \n"Une erreur est survenue. Essayez de recharger la page :\nErreur serveur: DBObject of size 20093684 is over Max BSON size 16777216"\n\ncf. copies d''écran joints\n\nUn dossier a-il atteint la taille limite de BSON ?, le nombre de noeud d''un dossiers est-il atteint ... ?\nComment pouvons nous surveiller ceci ?\nAuriez vous une idée du dysfonctionnement ?', 'Anomalie', 'Commentaire', 'Normal', 'Mineur', 'Ulterieure', '1.0.0-RC16', '2014-07-03 13:20:25', 0, 0, '0.0', '2013-06-12 09:50:00', '2014-02-09 10:17:20', '2013-07-05 14:09:00', '2013-06-11 22:00:00', 14, 1, 13),
(15, 2861, 'CRRA - Gertrude - Support', 'Bloc localisation, champ milieu d''implantation affichage d''erreur', '\nLorsque le champ milieu d''implantation a la valeur "en ville", une erreur apparait sur lieux-dits avec un message indiquant qu''adresse est à corriger. L''erreur disparait effectivement en renseignant Adresse. Il semble donc que l''erreur devrait apparaitre sur le champ adresse et non pas sur lieux-dits\n\nVoir pj.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.1', '2014-07-03 13:20:31', 0, 0, '0.0', '2013-06-11 15:35:00', '2014-02-09 10:17:21', '2013-06-12 06:36:00', '2013-06-10 22:00:00', 2, -1, 13),
(16, 2808, 'CRRA - Gertrude - Support', 'Echelles différenciées par couche carto', 'Est-il possible de définir des "scales" par fond cartographique dans le cas ou les flux WMS n''ont pas les mêmes echelles ?\n\nMerci.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0', '2014-07-03 13:20:37', 0, 0, '0.0', '2013-06-06 15:32:00', '2014-02-09 10:17:21', '2013-07-11 15:03:00', '2013-06-05 22:00:00', 6, -1, 13),
(17, 2762, 'CRRA - Gertrude - Support', 'Assistance pour l''installation de la V1.0.2', 'Nous envisageons de passer courant juin en V1.01 ou version stable, \n- vers quelle date peux-t-on le prévoir\n- vous est-il possible de créer un compte pour notre CODEP DSI philippe.pavué\n- passage direct de la RC14 à V1 ?\n- ou trouvons-nous la dernière version du manuel d''installation et d''exploitation,  iste des scripts à passer (Données saisies sur GERTRUDE)\n- liste des scripts à passer (Données saisies sur GERTRUDE)\n- Y-a-t-il des nouveautés dans la procédure d''importation de notices\n- Ou se trouve la documentation sur la reprise corrective (roadmap V1.0), est-ce le VII.13 import-correctif-xml.sh du manuel d''installation V1.0', 'Assistance', 'En cours', 'Normal', 'Mineur', '', '1.0.0-RC14', '2014-07-03 13:20:40', 0, 0, '0.0', '2013-05-31 17:34:00', '2013-06-27 09:58:00', '2013-07-02 08:06:00', '2013-05-30 22:00:00', 6, -1, 13),
(18, 2682, 'CRRA - Gertrude - Support', 'Fichier de log invalide', 'Je ne comprends pas pourquoi mon fichier de log est invalide. Pourriez-vous m''aider ?', 'Assistance', 'Nouveau', 'Normal', 'Majeur', '', '1.0.0', '2014-07-03 13:20:45', 0, 0, '0.0', '2013-05-22 14:03:00', '2013-06-24 08:50:00', '2013-07-16 13:42:00', '2013-05-21 22:00:00', 7, -1, 13),
(19, 2671, 'CRRA - Gertrude - Support', 'Champ Nature du dossier', 'Le champ Nature du dossier n''est pas rempli selon les attendus. On ne constate aucune modification par rapport à la RC16.', 'Anomalie', 'Commentaire', 'Normal', 'Majeur', '', '1.0.0', '2014-07-03 13:20:49', 0, 0, '0.0', '2013-05-17 08:44:00', '2014-02-09 10:17:21', '2013-07-16 11:04:00', '2013-05-16 22:00:00', 8, -1, 13),
(20, 2669, 'CRRA - Gertrude - Support', 'Affichage des liens en diffusion', 'L''affichage des liens d''un dossier d?????uvre est incomplet.\nDepuis un dossier d?????uvre, je devrais voir le lien vers le DC et vers le village et aucun de ces liens n''est présent sur la page.\nhttp://gertrude-fotst.cr-picardie.fr/gertrude-diffusion/dossier/ecole-primaire-des-filles/341cc331-b826-40d8-ba35-db178acb715a\n\nDans cet autre exemple : http://gertrude-fotst.cr-picardie.fr/gertrude-diffusion/dossier/groupe-scolaire-et-mairie/70c3abeb-92db-4e9d-9716-564f6b2e2205\nje vois le lien vers le DC mais pas celui vers le village.\n\nEnfin dans cet exemple : http://gertrude-fotst.cr-picardie.fr/gertrude-diffusion/dossier/l-architecture-publique-du-val-de-nievre/5c82c5c2-5a13-4fc3-81bf-59f3d6725736\nles liens vers les dossiers d?????uvre n''apparaissent pas. ', 'Anomalie', 'En cours', 'Normal', 'Majeur', '', '1.0.0', '2014-07-03 13:20:54', 0, 0, '0.0', '2013-05-17 08:42:00', '2014-02-09 10:17:21', '2013-06-12 07:50:00', '2013-05-16 22:00:00', 9, -1, 13),
(21, 2549, 'CRRA - Gertrude - Support', 'Sortie de la version définitive de GERTRUDE 1.0', 'Bonjour,\nPouvez-vous me donner une date à laquelle sera disponible la version officielle de GERTRUDE ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:25:21', 0, 0, '0.0', '2013-04-24 14:02:00', '2014-02-09 10:17:21', '2013-04-24 14:02:00', '2013-04-23 22:00:00', 13, -1, 13),
(22, 2463, 'CRRA - Gertrude - Support', 'Export XML ne permet pas de obtenir le département ni la région d''une commune dans les blocs localisations', 'Pas de valeurs ni de référentiels dans l''export pour obtenir le département et la région d''une commune (code INSEE) dans les blocs localisations\nPeut-on avoir les moyens dans l''export de retrouver ces 2 éléments', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:25:26', 0, 0, '0.0', '2013-04-09 07:03:00', '2013-04-09 14:16:00', '2013-04-12 07:35:00', '2013-04-08 22:00:00', 8, -1, 14),
(23, 2456, 'CRRA - Gertrude - Support', 'Incrémentation automatique des numéros des dossier formant leur immatriculation', 'Bonjour,\nAfin d''éviter les doublons, et la gestion de plage de numéro en dehors de Gertrude, il serait souhaitable qu''à la création d''une notice, le numéro soit autoincrémenté.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:21:01', 0, 0, '0.0', '2013-04-08 12:38:00', '2014-02-09 10:17:21', '2013-04-08 12:38:00', '2013-04-07 22:00:00', 15, -1, 14),
(24, 2370, 'CRRA - Gertrude - Support', 'Champ TITRE de la référence documentaire', 'Serait-il possible que ce champ soit plus grand car on ne voit qu''une petite partie des titres des références documentaires ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC16', '2014-07-03 13:21:06', 0, 0, '0.0', '2013-03-28 14:40:00', '2014-02-09 10:17:21', '2013-03-28 14:40:00', '2013-03-27 23:00:00', 13, 1, 21),
(25, 2296, 'CRRA - Gertrude - Support', 'Champ Rôle du Lien Web', 'Pour la reprise des données, il serait très intéressant de pouvoir remplir de façon automatisée par une même valeur le champ Rôle de tous les liens Web contenus dans le champ DOSURL. Cela nous permettrait un énorme gain de temps! ', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC16', '2014-07-03 13:21:11', 0, 0, '0.0', '2013-03-21 14:23:00', '2014-02-09 10:17:22', '2013-03-21 14:23:00', '2013-03-20 23:00:00', 19, -1, 20),
(26, 2295, 'CRRA - Gertrude - Support', 'Classement des photographies', 'Pour faciliter le bon ordonnancement des fiches Illustrations dans le bloc Illustrations, serait-il possible de pouvoir insérer une fiche directement à l''endroit voulu, entre 2 fiches existantes?\n\nDe même pourrait-il y avoir une amélioration du système de glissement des photos vers le haut ou vers le bas : ne pas avoir à se repositionner sans arrêt sur la fiche que l''on veut faire bouger. cela double le nombre de clics et ne peut pas se réaliser de façon très automatique.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC16', '2014-07-03 13:21:17', 0, 0, '0.0', '2013-03-21 14:13:00', '2014-02-09 10:17:22', '2013-06-10 13:09:00', '2013-03-20 23:00:00', 19, -1, 20),
(27, 2254, 'CRRA - Gertrude - Support', 'Affichage des rubriques des références documentaires en diffusion', 'Les intitulés des références documentaires sont à corriger :\n\nDocument d''archive : valeur attendue = Documents d''archives\nBibliographie : OK\nDocument figuré : valeur attendue = Documents figurés', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC16', '2014-07-03 13:21:22', 0, 0, '0.0', '2013-03-20 06:50:00', '2014-02-09 10:17:22', '2013-03-20 15:05:00', '2013-03-19 23:00:00', 17, -1, 19),
(28, 2165, 'CRRA - Gertrude - Support', 'Exports PDF : légendes des illustrations', 'Les légendes ne sont exportées que pour les vignettes et pas pour les plein écran.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC16', '2014-07-03 13:21:26', 0, 0, '0.0', '2013-03-12 12:11:00', '2014-02-09 10:17:22', '2013-04-16 14:44:00', '2013-03-11 23:00:00', 17, -1, 15),
(29, 2157, 'CRRA - Gertrude - Support', 'export des illustrations au-delà d''un certain nombre', 'Lors de l''export des illustrations au-delà d''un certain nombre (au-delà de 100 notices illustrations), le processus d''export plante.\n\nNous avons fait une recherche sur "immatriculation contient 201204", 709 illustrations existent en production. Nous avons été obligé de les exporter par lots de 100.\n\nci-joint le lien vers la recherche experte :\n\nhttp://gertrude-data.cr-paca.fr/gertrude-production/?p=RechercheExperte:{%22t%22:%22Illustration%22,+%22a%22:true,+%22s%22:%22i_immatriculation%22,+%22o%22:%22Asc%22,+%22f%22:{%22t%22:%22And%22,+%22f%22:[{%22t%22:%22Field%22,+%22c%22:%22i_immatriculation%22,+%22o%22:%22Containing%22,+%22d%22:{%22s1%22:%22201204%22}}]}}&\n\nlors de l''export, le message ci-joint en pièce jointe s''affiche.\n', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC16', '2014-07-03 13:21:33', 0, 0, '0.0', '2013-03-12 10:15:00', '2014-02-09 10:17:22', '2013-03-14 08:37:00', '2013-03-11 23:00:00', 18, -1, 15),
(30, 2147, 'CRRA - Gertrude - Support', 'Reprise XML : le champ PHASE n''est pas repris', 'Le champ PHASE n''est pas repris par le moteur de reprise alors qu''il existe bien dans les tables Renabl (cf. balise <INFOGENE NOMCHAMP="PHASE">repéré</INFOGENE> dans fichier joint).', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC16', '2014-07-03 13:21:39', 0, 0, '0.0', '2013-03-08 17:14:00', '2014-02-09 10:17:22', '2013-03-11 14:56:00', '2013-03-07 23:00:00', 13, -1, 13),
(31, 2015, 'CRRA - Gertrude - Support', 'Mosaïque pour les vignettes des illustrations', 'Serait-il possible que les vignettes des photos apparaissent en mosaïque quand on ouvre le bloc illustrations d''un dossier ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:21:57', 0, 0, '0.0', '2013-02-21 09:06:00', '2014-02-09 10:17:22', '2013-02-21 09:06:00', '2013-02-20 23:00:00', 4, -1, 13),
(32, 2009, 'CRRA - Gertrude - Support', 'optimisation des tâches de traitements par lots', 'Les traitements par lots sont vraiment très longs (ex : il faut plus de 10 minutes pour modifier le contenu du champ Sens de 1000 illustrations). Est-ce qu''il y aurait des solutions pour améliorer l''exécution de ces tâches ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC15', '2014-07-03 13:22:03', 0, 0, '0.0', '2013-02-20 13:59:00', '2014-02-09 10:17:22', '2013-02-20 13:59:00', '2013-02-19 23:00:00', 12, -1, 13),
(33, 2004, 'CRRA - Gertrude - Support', 'Recherche experte Illustration par Numéro', 'La recherche par Numéro (Numéro supérieur ou égal à 1000, par exemple) ne s''effectue pas correctement.\n', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '1.0.0-RC14', '2014-07-03 13:22:06', 0, 0, '0.0', '2013-02-20 09:22:00', '2014-02-09 10:17:22', '2013-02-26 13:07:00', '2013-02-19 23:00:00', 2, -1, 13),
(34, 2003, 'CRRA - Gertrude - Support', 'Recherche simple', 'je fais une recherche simple avec la valeur *1522*, je n''ai pas de résultat par contre si je mets la valeur IM44001522 j''ai la notice qui sort. Ce problème ne semble pas récurrent, pour la valeur *1542*, je n''ai pas de souci, j''ai bien la notice IM44001542 qui sort en résultat.', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '1.0.0-RC14', '2014-07-03 13:22:09', 0, 0, '0.0', '2013-02-20 09:07:00', '2014-02-09 10:17:22', '2013-02-26 13:07:00', '2013-02-19 23:00:00', 1, -1, 13),
(35, 1995, 'CRRA - Gertrude - Support', 'Absence champ PPRO pour les dossiers Objets', 'Dans le bloc "Intérêts et protections", pour les dossiers Objets, il manque le champ "Précision sur la protection".\nRemarque : d''après le tableau de qualification des modules de reprise (http://collabra.rhonealpes.fr/eRoom/rra/GertrudeCOREX/0_320f1) créé par le COPROJ fin 2011, ce champ existait au moment des tests unitaires, et la reprise se faisait correctement.', 'Evolution', 'Commentaire', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:16', 0, 0, '0.0', '2013-02-18 23:20:00', '2014-02-09 10:17:22', '2013-04-15 12:53:00', '2013-02-18 23:00:00', 12, -1, 13),
(36, 1990, 'CRRA - Gertrude - Support', 'Affichage du lieu-dit dans le bloc localisation', 'L''article d''un lieu-dit, conformément au manuel d''utilisateur est bien stocké dans le champ précision. Mais l''article n''apparait pas lorsque l''on visualise le bloc. ', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:19', 0, 0, '0.0', '2013-02-18 16:55:00', '2014-02-09 10:17:22', '2013-02-18 17:15:00', '2013-02-17 23:00:00', 14, -1, 13),
(37, 1946, 'CRRA - Gertrude - Support', 'Bloc Historique, bloc auteurs de l''oeuvre', 'Deux choses sur ce bloc.\n\nla première, lorsque l''on veut créer un nouvel auteur de l''oeuvre la boite de dialogue qui apparait porte le titre "Création d''une profession", ça devrait plutôt être "Rôle"\n\nCe qui m''amène à ma seconde remarque. Lorsque l''on rentre dans le bloc Auteurs de l''oeuvre, pour Auteur il y a le champ "rôles" et comme l''évoque un peu le système descriptif, ne vaudrait-il pas mieux remplacer le terme de "rôles" par celui de "professions" car le thésaurus associé à ce champ est un listing de professions (architecte, menuisier ...). \n\nCe changement éviterait également la confusion entre les deux notions de rôles que l''on retrouve dans le bloc Auteur de l''oeuvre. C''est à dire entre le rôle qui est à définir lors de la création d''une nouvelle fiche et le rôle qui a comme signification profession ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:23', 0, 0, '0.0', '2013-02-14 16:24:00', '2014-02-09 10:17:23', '2013-02-15 07:26:00', '2013-02-13 23:00:00', 17, -1, 13),
(38, 1945, 'CRRA - Gertrude - Support', 'Champs Recherche experte Illustrations', 'Il faudrait absolument pouvoir interroger en recherche experte les Illustrations avec les champs Aire, Commune, Localisations, Dénominations, et dans une moindre mesure Lieu de conservation.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:27', 0, 0, '0.0', '2013-02-14 14:47:00', '2014-02-09 10:17:23', '2013-02-20 08:38:00', '2013-02-13 23:00:00', 13, -1, 13),
(39, 1943, 'CRRA - Gertrude - Support', 'Mise en page des dossiers téléchargés', 'La mise en page des dossiers ne pourrait-elle pas être améliorée (texte justifié, suppression de certains encadrements, homogénéisation de la taille des photos pour empêcher certains sauts de pages malheureux,...)?\n', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:32', 0, 0, '0.0', '2013-02-14 14:30:00', '2014-02-09 10:17:23', '2013-02-14 14:30:00', '2013-02-13 23:00:00', 17, -1, 13),
(40, 1942, 'CRRA - Gertrude - Support', 'Droit d''édition par défaut sur l''ensemble des données pour l''administrateur', 'Ne serait-il pas possible de donner à l''administrateur le droit d''édition sur l''ensemble des fiches Dossiers, Illustrations , Références documentaires, par défaut. Actuellement, les opérations de correction, surtout au coup par coup sont beaucoup trop longues pour l''administrateur. \n', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:35', 0, 0, '0.0', '2013-02-14 14:23:00', '2014-02-09 10:17:23', '2013-02-15 09:00:00', '2013-02-13 23:00:00', 19, -1, 13),
(41, 1928, 'CRRA - Gertrude - Support', 'Ergonomie, écran d''accueil', 'Comme dans le bloc Description le champ description est repris, il serait pratique que dans le bloc Historique le champ historique soit repris. ', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:38', 0, 0, '0.0', '2013-02-13 08:57:00', '2014-02-09 10:17:23', '2013-02-13 09:18:00', '2013-02-12 23:00:00', 19, -1, 13),
(42, 1927, 'CRRA - Gertrude - Support', 'Ergonomie : écran d''accueil, bloc description ', 'Sur l''écran d''accueil d''une fiche, dans le bloc description, le champ description est suivi d''une ligne blanche contrairement à tous les autres champs.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:42', 0, 0, '0.0', '2013-02-13 08:46:00', '2014-02-09 10:17:23', '2013-02-13 09:18:00', '2013-02-12 23:00:00', 19, -1, 13),
(43, 1925, 'CRRA - Gertrude - Support', 'Notices ministère, Champ PPRO', 'Pour la notice IM44001522, les données du champ PPRO ne sont reprises dans aucun champ de Gertrude. ', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:45', 0, 0, '0.0', '2013-02-12 15:13:00', '2014-02-09 10:17:23', '2013-02-19 09:48:00', '2013-02-11 23:00:00', 7, -1, 13),
(44, 1920, 'CRRA - Gertrude - Support', 'Recherche experte : champs formulaires', 'lorsque l''on crée des formulaires, les champs de ceux-ci, selon leur classement alphabétique, peuvent être visibles dans les champs par défaut de la boite de dialogue ajout d''un champ (cf pièce jointe). \n\nPour l''ergonomie de l''application et la simplicité d''utilisation, il ne faudrait pas que cette boite de dialogue propose par défaut ces champs formulaires, mais qu''ils ne soient affichés uniquement lorsque l''on tape leurs premières lettres. \n', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:48', 0, 0, '0.0', '2013-02-12 09:45:00', '2014-02-09 10:17:23', '2013-02-12 09:45:00', '2013-02-11 23:00:00', 7, -1, 13),
(45, 1916, 'CRRA - Gertrude - Support', 'Masquage des données complémentaires (données sensibles)', 'Les formulaires de saisie des données complémentaires ne comportent pas de zone de masquage (marquage en données sensibles)comme tous les autres champs de la base de données.\nIl est donc nécessaire d''implémenter cette fonctionnalité dans les formulaires de données complémentaires.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:51', 0, 0, '0.0', '2013-02-11 06:43:00', '2014-02-09 10:17:23', '2013-02-21 14:13:00', '2013-02-10 23:00:00', 7, -1, 13),
(46, 1790, 'CRRA - Gertrude - Support', 'Erreur dans la requête comportant la troncature "?"', 'Lors d''une recherche sur "observa?oire" pour "observatoire", la recherche ne ramène aucune résultat. \nSi le terme est écrit en toutes lettres, il y a 25 résultats. ', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '1.0.0-RC14', '2014-07-03 13:22:55', 0, 0, '0.0', '2013-01-30 19:14:00', '2014-02-09 10:17:23', '2013-02-26 13:04:00', '2013-01-29 23:00:00', 8, -1, 13),
(47, 1747, 'CRRA - Gertrude - Support', 'Recherche experte : Illustration / Exporter la sélection', 'ne fonctionne plus dès que l''on dépasse un certain nombre d''images. En fait c''est aléatoire, l''export peut être ok pour un lot de 300 images (mais pas plus) et boguer pour un lot de 40 images.\n\nMessage d''erreur :\n\nRequest-URI Too Large\nThe request URL''s length exceeds the capacity limit for this server\n\n\n\nMerci.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:22:57', 0, 0, '0.0', '2013-01-24 09:58:00', '2014-02-09 10:17:24', '2013-01-29 14:18:00', '2013-01-23 23:00:00', 8, -1, 13),
(48, 1722, 'CRRA - Gertrude - Support', 'Affichage des champs TIREDE, LIEUCOR et COTECOR dans le site de diffusion et les PDF', 'Sur le site de diffusion, les références documentaires sont incomplètes : les données des champs TIREDE, LIEUCOR, COTECOR n''apparaissent pas. Par conséquent, elles ne sont pas non plus dans l''export pdf.\nIl faut que ces données soient implémentés dans la V1.', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:23:00', 0, 0, '0.0', '2013-01-22 10:19:00', '2014-02-09 10:17:24', '2013-01-29 14:18:00', '2013-01-21 23:00:00', 6, -1, 13),
(49, 1702, 'CRRA - Gertrude - Support', 'Import des thesaurus', 'Si certains thesauri n''ont pas été chargé dans Gertrude, comment doit on procéder localement. Et pourquoi ne pas avoir chargé par exemple "cantons et aires d''études" ou bien les copyrights de chaque région?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:23:04', 0, 0, '0.0', '2013-01-17 23:01:00', '2014-02-09 10:17:24', '2013-01-29 14:18:00', '2013-01-17 23:00:00', 7, -1, 13),
(50, 1701, 'CRRA - Gertrude - Support', 'Dossiers supprimés toujours visibles et messages d''erreurs', 'Après sélection de dossiers à supprimer en recherche experte et "dossier supprimer", les dossiers restent visibles mais non accessibles (messages d''erreur en pièce jointe) et pas de mises à jour de la liste d''erreurs liée à ces dossiers...\nImpossible de faire le ménage!', 'Assistance', 'Commentaire', 'Normal', 'Critique', '', '1.0.0-RC14', '2014-07-03 13:23:07', 0, 0, '0.0', '2013-01-18 10:26:00', '2014-02-09 10:17:24', '2013-06-27 09:58:00', '2013-01-17 23:00:00', 7, -1, 13),
(51, 1559, 'CRRA - Gertrude - Support', 'Contenu du bloc Historique dans la zone de travail (ds laquelle sont affichés tous les blocs d''une entité)', 'Est-il possible d''afficher le (début du) chp HIST dans le bloc Historique de cette fenêtre (comme pour le chp DESC dans le bloc DESC) ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:23:14', 0, 0, '0.0', '2013-01-03 17:06:00', '2014-02-09 10:17:24', '2013-01-08 13:22:00', '2013-01-02 23:00:00', 18, -1, 12),
(52, 1557, 'CRRA - Gertrude - Support', 'Est-il possible de paramétrer (au niveau Régional) la couleur du bandeau de l''application de pre-production ?', 'Afin de mieux distinguer les 2 applis (prod et pre-prod).', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:23:18', 0, 0, '0.0', '2013-01-03 14:55:00', '2014-02-09 10:17:24', '2013-01-08 13:22:00', '2013-01-02 23:00:00', 14, -1, 12),
(53, 1550, 'CRRA - Gertrude - Support', 'contrôle manquant dans le bloc illustrations (en mode affichage du dossier)', 'Il n''y a pas de contrôle dans le bloc illustrations des dossiers. Mes dossiers sont valides alors que les notices illustrations qui y sont rattachées ne le sont pas. Il faudrait pouvoir identifier ces erreurs en mode affichage du dossier (pour l''instant il faut ouvrir chaque notice illustration pour vérifier sa validité).', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:23:21', 0, 0, '0.0', '2013-01-03 12:40:00', '2014-02-09 10:17:24', '2013-01-08 13:22:00', '2013-01-02 23:00:00', 12, -1, 12),
(54, 1449, 'CRRA - Gertrude - Support', 'Caractère spécial dans champ "historique"', 'Dans le champ historique, un caractère spécial servant à marquer les sauts de pages dans les applications antérieures subsiste lors des imports. \nPeut-il être supprimé lors des intégrations dans Gertrude ?', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:23:24', 0, 0, '0.0', '2012-12-20 10:42:00', '2014-02-09 10:17:24', '2013-02-14 23:13:00', '2012-12-19 23:00:00', 6, -1, 13),
(55, 1448, 'CRRA - Gertrude - Support', 'Champ "milieu d''implantation" dans bloc "localisation / localisation communale"', 'Le champ "milieu d''implantation" pourrait-il apparaître bloc "localisation" dès que l''on arrive dans cette rubrique, sans qu''il soit nécessaire d''ouvrir le bloc ?', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '', '2014-07-03 13:23:28', 0, 0, '0.0', '2012-12-20 10:39:00', '2014-02-09 10:17:24', '2013-02-14 23:12:00', '2012-12-19 23:00:00', 3, -1, 13),
(56, 1447, 'CRRA - Gertrude - Support', 'Champ adresse dans bloc localisation', 'Lorsque le nom de la voie débute par une apostrophe, il y a un espace en trop entre l''apostrophe et le début du mot. ', 'Evolution', 'Nouveau', 'Normal', '', '', '1.0.0-RC14', '2014-07-03 13:23:31', 0, 0, '0.0', '2012-12-20 10:36:00', '2014-02-09 10:17:24', '2013-01-08 13:22:00', '2012-12-19 23:00:00', 3, -1, 13),
(57, 1446, 'CRRA - Gertrude - Support', 'Champ "auteur de l''oeuvre"', 'Dans le bloc "historique", le champ auteur de l''oeuvre apparaît dans un 1er temps rempli avec "auteur". Quand on développe le bloc, on voit la rôle réel de l''auteur (architecte etc). \nEst-il possible d''afficher tout de suite son rôle exact ?\n', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '', '2014-07-03 13:23:34', 0, 0, '0.0', '2012-12-20 10:34:00', '2014-02-09 10:17:24', '2013-02-19 08:14:00', '2012-12-19 23:00:00', 3, -1, 13),
(58, 1424, 'CRRA - Gertrude - Support', 'Filière Notice XML, import des illustrations au format Gertrude', '\nTout comme pour les dossiers du ministère, il faudrait pouvoir importer par lot, les illustrations, au format Gertrude, des notices de la filière XML.', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '', '2014-07-03 13:23:37', 0, 0, '0.0', '2012-12-18 16:07:00', '2014-02-09 10:17:25', '2013-02-14 23:12:00', '2012-12-17 23:00:00', 3, -1, 12),
(59, 1254, 'CRRA - Gertrude - Support', 'Génération de vignettes pendant la reprise d''illustrations', 'Dans le cas de fichiers repris, est-il normal que les vignettes ne soient pas générées automatiquement ?', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '', '2014-07-03 13:23:41', 0, 0, '0.0', '2012-11-26 16:02:00', '2012-12-05 09:05:00', '2013-04-02 13:51:00', '2014-02-09 10:17:25', 7, -1, 12),
(60, 1208, 'CRRA - Gertrude - Support', 'Empêcher les doublons dans l''interface d''administration des thésaurus', '', 'Evolution', 'Nouveau', 'Normal', '', 'Ulterieure', '', '2014-07-03 13:23:44', 0, 0, '0.0', '2012-11-13 15:37:00', '2014-02-09 10:17:25', '2013-02-14 23:11:00', '2012-11-12 23:00:00', 7, -1, 12),
(61, 0, 'V1', 'Demande', 'Demande teste', 'Assistance', 'Resolu', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-03-28 08:52:13', 0, 0, '0.0', '2014-03-28 08:52:13', '2014-03-28 08:52:13', '2014-03-28 08:52:13', '2014-03-28 08:52:13', 1, 2, 16),
(62, 0, 'V1', 'Demande', 'Demande teste', 'Assistance', 'Resolu', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-03-28 08:52:22', 0, 0, '0.0', '2014-03-28 08:52:22', '2014-03-28 08:52:22', '2014-03-28 08:52:22', '2014-03-28 08:52:22', 1, 2, 16),
(63, 0, 'V1', 'ffffff', 'Deuxieme teste de demande', 'Assistance', 'Resolu', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-03-28 08:54:05', 0, 0, '0.0', '2014-03-28 08:54:05', '2014-03-28 08:54:05', '2014-03-28 08:54:05', '2014-03-28 08:54:05', 1, 2, 16),
(64, 0, 'azdf', 'Demande', 'hgfsz', 'rdgfdwv', 'wdfgdf', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-04-01 08:18:52', 0, 0, '0.0', '2014-04-01 08:18:52', '2014-04-01 08:18:52', '2014-04-01 08:18:52', '2014-04-01 08:18:52', 1, 2, 19),
(65, 0, '', '', '', '', '', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-04-02 08:56:42', 0, 0, '0.0', '2014-04-02 08:56:42', '2014-04-02 08:56:42', '2014-04-02 08:56:42', '2014-04-02 08:56:42', 1, 2, 17),
(66, 0, '', '', '', '', '', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-04-02 08:57:39', 0, 0, '0.0', '2014-04-02 08:57:39', '2014-04-02 08:57:39', '2014-04-02 08:57:39', '2014-04-02 08:57:39', 1, 2, 17),
(67, 0, '', 'dddddd', '', '', '', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-04-02 09:03:45', 0, 0, '0.0', '2014-04-02 09:03:45', '2014-04-02 09:03:45', '2014-04-02 09:03:45', '2014-04-02 09:03:45', 1, 2, 17),
(68, 0, '', 'dddddd', '', '', '', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-04-02 09:03:50', 0, 0, '0.0', '2014-04-02 09:03:50', '2014-04-02 09:03:50', '2014-04-02 09:03:50', '2014-04-02 09:03:50', 1, 2, 17),
(69, 0, '', 'yteeeeeeeeeeeeeeee', '', '', '', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-04-02 09:06:13', 0, 0, '0.0', '2014-04-02 09:06:13', '2014-04-02 09:06:13', '2014-04-02 09:06:13', '2014-04-02 09:06:13', 1, 2, 17),
(70, 0, '<b>fff</b>', 'Demande', 'jhjhjj', 'Assistance', 'Resolu', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-12 07:58:35', 0, 0, '0.0', '2014-06-12 07:58:35', '2014-06-12 07:58:35', '2014-06-12 07:58:35', '2014-06-12 07:58:35', 1, 2, 21),
(71, 0, 'fffff', 'Demandes non utiles', 'ffff', 'fffffff', 'ffffffff', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-22 14:14:33', 0, 0, '0.0', '2014-06-22 14:14:33', '2014-06-22 14:14:33', '2014-06-22 14:14:33', '2014-06-22 14:14:33', 1, 2, NULL),
(72, 0, 'fffff', 'Demandes non utiles', 'ffff', 'fffffff', 'ffffffff', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-22 14:14:47', 0, 0, '0.0', '2014-06-22 14:14:47', '2014-06-22 14:14:47', '2014-06-22 14:14:47', '2014-06-22 14:14:47', 1, 2, NULL),
(73, 0, 'fffff', 'Demandes non utiles 3', 'teste demande dans une disussion dans un groupe', 'fffffff', 'ffffffff', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-22 14:58:03', 0, 0, '0.0', '2014-06-22 14:58:03', '2014-06-22 14:58:03', '2014-06-22 14:58:03', '2014-06-22 14:58:03', 1, 2, NULL),
(74, 0, 'GGG', 'Demandes non utiles 4', 'TEST DEMANDE DANS UN GROUPE DE DISCUSSION', 'GG', 'GGG', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-22 15:04:41', 0, 0, '0.0', '2014-06-22 15:04:41', '2014-06-22 15:04:41', '2014-06-22 15:04:41', '2014-06-22 15:04:41', 1, 2, NULL),
(75, 0, 'GGG', 'Demandes non utiles 4', 'test demande dans un groupe de discussion', 'fffffff', 'GGG', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-22 15:06:10', 0, 0, '0.0', '2014-06-22 15:06:10', '2014-06-22 15:06:10', '2014-06-22 15:06:10', '2014-06-22 15:06:10', 1, 2, NULL),
(76, 0, 'DSD', 'Demandes non utiles 5', 'DG', 'SDS', 'GDG', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-22 15:26:14', 0, 0, '0.0', '2014-06-22 15:26:14', '2014-06-22 15:26:14', '2014-06-22 15:26:14', '2014-06-22 15:26:14', 1, 2, NULL),
(77, 0, 'GGG', 'Demandes non utiles 5', 'dfg dfhdfh', 'fffffff', 'QQS', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-23 07:14:24', 0, 0, '0.0', '2014-06-23 07:14:24', '2014-06-23 07:14:24', '2014-06-23 07:14:24', '2014-06-23 07:14:24', 1, 2, NULL),
(78, 0, 'GGG', 'Demandes non utiles 5', 'dddddddddd', 'SDS', 'GGG', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-23 07:38:40', 0, 0, '0.0', '2014-06-23 07:38:40', '2014-06-23 07:38:40', '2014-06-23 07:38:40', '2014-06-23 07:38:40', 1, 2, NULL),
(79, 0, 'GGG', 'Demandes non utiles 5', '', 'fffffff', 'QQS', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-25 13:58:59', 0, 0, '0.0', '2014-06-25 13:58:59', '2014-06-25 13:58:59', '2014-06-25 13:58:59', '2014-06-25 13:58:59', 1, 2, NULL),
(80, 0, 'GGG', 'Demandes non utiles 5', 'Content was just added!', 'fffffff', 'QQS', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-25 13:59:17', 0, 0, '0.0', '2014-06-25 13:59:17', '2014-06-25 13:59:17', '2014-06-25 13:59:17', '2014-06-25 13:59:17', 1, 2, NULL),
(81, 0, 'Gertrude', 'Promblème d''affichage de certains champs', 'Bonjour,\r\n\r\nJ''arrive pas à afficher certain champs dans les formulaires suivants: <br>\r\n\r\n<ul>\r\n<li>Form 1</li>\r\n<li>Form 2</li>\r\n<li>Form 3</li>\r\n<ul>', '', 'non résolue', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-30 09:58:18', 0, 0, '0.0', '2014-06-30 09:58:18', '2014-06-30 09:58:18', '2014-06-30 09:58:18', '2014-06-30 09:58:18', 2, 2, NULL),
(82, 0, 'Gertrude', 'Promblème d''affichage de certains champs', 'Bonjour,\r\n\r\nJ''arrive pas à afficher certain champs dans les formulaires suivants: <br>\r\n\r\n<ul>\r\n<li>Form 1</li>\r\n<li>Form 2</li>\r\n<li>Form 3</li>\r\n<ul>', '', 'non résolue', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-30 09:58:43', 0, 0, '0.0', '2014-06-30 09:58:43', '2014-06-30 09:58:43', '2014-06-30 09:58:43', '2014-06-30 09:58:43', 2, 2, NULL),
(83, 0, 'Gertrude', 'Promblème d''affichage de certains champs', 'Bonjour,\r\n\r\nJ''arrive pas à afficher certain champs dans les formulaires suivants: <br>\r\n\r\n<ul>\r\n<li>Form 1</li>\r\n<li>Form 2</li>\r\n<li>Form 3</li>\r\n<ul>', '', 'non résolue', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-30 09:59:10', 0, 0, '0.0', '2014-06-30 09:59:10', '2014-06-30 09:59:10', '2014-06-30 09:59:10', '2014-06-30 09:59:10', 2, 2, NULL),
(84, 0, 'Gertrude', 'Test 1 ', 'Description Test 1', 'SDS', 'QQS', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-30 10:07:59', 0, 0, '0.0', '2014-06-30 10:07:59', '2014-06-30 10:07:59', '2014-06-30 10:07:59', '2014-06-30 10:07:59', 2, 2, NULL),
(85, 0, 'Gertrude', 'Test 2', 'Description test 2', 'fffffff', 'GGG', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-30 10:10:41', 0, 0, '0.0', '2014-06-30 10:10:41', '2014-06-30 10:10:41', '2014-06-30 10:10:41', '2014-06-30 10:10:41', 2, 2, NULL),
(86, 0, 'Gertrude', 'Test 2', 'Description test 2', 'fffffff', 'GGG', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-30 10:10:54', 0, 0, '0.0', '2014-06-30 10:10:54', '2014-06-30 10:10:54', '2014-06-30 10:10:54', '2014-06-30 10:10:54', 2, 2, NULL),
(87, 0, '', 'Test 3', 'Description test 3', '', '', 'pas trop urgent', 'néant', '1.1', '1.0', '2014-06-30 10:14:13', 0, 0, '0.0', '2014-06-30 10:14:13', '2014-06-30 10:14:13', '2014-06-30 10:14:13', '2014-06-30 10:14:13', 2, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `demande_redmine_chapitres`
--

CREATE TABLE IF NOT EXISTS `demande_redmine_chapitres` (
  `id` int(11) NOT NULL,
  `demandeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_redmine_manuels`
--

CREATE TABLE IF NOT EXISTS `demande_redmine_manuels` (
  `id` int(11) NOT NULL,
  `demandeId` int(11) NOT NULL,
  PRIMARY KEY (`id`,`demandeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `discussion`
--

CREATE TABLE IF NOT EXISTS `discussion` (
  `discussionId` int(11) NOT NULL AUTO_INCREMENT,
  `demandeId` int(11) NOT NULL COMMENT 'id de la demande qui represente l''objet de cette discussion',
  `groupeId` int(11) NOT NULL,
  PRIMARY KEY (`discussionId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `discussion`
--

INSERT INTO `discussion` (`discussionId`, `demandeId`, `groupeId`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 78, 1),
(4, 79, 6),
(5, 80, 6),
(6, 81, 1),
(7, 82, 1),
(8, 83, 1),
(9, 84, 1),
(10, 85, 1),
(11, 86, 1),
(12, 87, 1);

-- --------------------------------------------------------

--
-- Structure de la table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL,
  `idPost` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `data` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
  `groupeId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(24) NOT NULL,
  `description` varchar(500) NOT NULL,
  `autheur` int(11) NOT NULL,
  PRIMARY KEY (`groupeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`groupeId`, `title`, `description`, `autheur`) VALUES
(1, 'Test', 'Test de création d''un groupe de discussion autour du thème: ''Test''....\r\nLa création d''un groupe a pour objectif de permettre aux utilisateurs... etc.  ', 1),
(2, 'Testico', 'El testico del partido del monta', 1),
(3, 'test', 'teste', 1),
(4, 'Teste', 'Pour tester la création d''un groupe!', 1),
(5, 'ZAIDANE', 'C''est une test de n''importe quoi en écrivant n''importe quoi tout en essayant de respecter le bon orthographe du Français la langue de Molière!   ', 1),
(6, 'ZAIDANE', 'Les Ziiiiiiiiiiiiiidanooooos :)', 1);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_member`
--

CREATE TABLE IF NOT EXISTS `groupe_member` (
  `groupeId` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`groupeId`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupe_member`
--

INSERT INTO `groupe_member` (`groupeId`, `id`) VALUES
(1, 3),
(1, 10),
(1, 12),
(1, 13),
(1, 15);

-- --------------------------------------------------------

--
-- Structure de la table `manuel`
--

CREATE TABLE IF NOT EXISTS `manuel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `manuel`
--

INSERT INTO `manuel` (`id`, `titre`) VALUES
(1, 'Manuel teste'),
(2, 'Manuel teste');

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `idNotification` int(11) NOT NULL AUTO_INCREMENT,
  `idPersonneNotifie` int(11) NOT NULL,
  `idPersonneNotifiant` int(11) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vue` tinyint(1) NOT NULL,
  PRIMARY KEY (`idNotification`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `notification`
--

INSERT INTO `notification` (`idNotification`, `idPersonneNotifie`, `idPersonneNotifiant`, `objet`, `date`, `vue`) VALUES
(1, 1, 2, 'Ajout à un groupe', '2014-06-15 22:00:00', 0),
(2, 16, 2, 'Ajout à un groupe', '2014-06-16 06:25:18', 0),
(3, 1, 2, 'Ajout de commentaire!', '2014-06-16 08:10:34', 0),
(4, 1, 15, 'Notification de mention dans un commentaire!', '2014-06-23 22:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE IF NOT EXISTS `offre` (
  `idOffre` int(11) NOT NULL AUTO_INCREMENT,
  `idPrestataire` int(11) NOT NULL,
  `idDemande` int(11) NOT NULL,
  `description` varchar(4024) NOT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`idOffre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `offre`
--

INSERT INTO `offre` (`idOffre`, `idPrestataire`, `idDemande`, `description`, `prix`) VALUES
(1, 2, 10, 'Bla bla bla lbala!', 12),
(2, 1, 10, 'dascription', 12.4),
(3, 1, 10, '<p align="left"></p><ol><li><a href="http://">QQ</a></li><li><a href="http://">QQ <br></a></li><li><a href="http://">QQ<br></a></li></ol><p></p>', 12.23),
(4, 1, 10, 'DFSDFSD', 12.34);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `idProjet` int(11) NOT NULL,
  `lancement` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(4000) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `cahierDesCharges` int(11) NOT NULL,
  PRIMARY KEY (`idProjet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`idProjet`, `lancement`, `description`, `titre`, `cahierDesCharges`) VALUES
(0, '2014-07-04 13:28:03', 'Projet test', 'GERTRUDE', 0),
(1, '2014-07-04 13:28:11', 'Projet test', 'GERTRUDE', 0);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) NOT NULL,
  `sondageId` int(11) DEFAULT NULL,
  `multipleChoice` tinyint(1) NOT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`questionId`, `content`, `sondageId`, `multipleChoice`) VALUES
(1, 'QT2', NULL, 0),
(2, 'QT1', NULL, 0),
(3, 'QT2', NULL, 0),
(4, 'QT1', NULL, 0),
(5, 'Qu’est-ce que le « MITI » au Japon ?', 1, 0),
(6, '1960 marque la naissance de l''OPEP. Cette organisation rassemble :', 1, 1),
(7, 'Quel est le nom de l?araignée?', 4, 0),
(8, 'Quel est le nom de l?araignée? ', 5, 0),
(9, '', 5, 0),
(10, 'Question débulle 1 ', 6, 0),
(11, 'ss', 6, 1),
(12, 'kzkzkzz', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE IF NOT EXISTS `reponse` (
  `reponseId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `content` varchar(500) NOT NULL,
  `author` int(11) NOT NULL,
  `commentId` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`reponseId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `reponse`
--

INSERT INTO `reponse` (`reponseId`, `parentId`, `content`, `author`, `commentId`, `date`) VALUES
(1, 0, 'content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1', 2, 45, '2014-06-27 13:39:04'),
(2, 0, 'content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1', 2, 45, '2014-06-27 13:39:02'),
(3, 1, 'content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1', 2, 0, '2014-06-27 13:38:36'),
(4, 1, 'content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1content d''un sous commentaire statique 1.2.1', 2, 0, '2014-06-27 13:38:41');

-- --------------------------------------------------------

--
-- Structure de la table `sondage`
--

CREATE TABLE IF NOT EXISTS `sondage` (
  `sondageId` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(2000) NOT NULL,
  `ouverture` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sondageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `sondage`
--

INSERT INTO `sondage` (`sondageId`, `about`, `ouverture`, `fin`) VALUES
(1, 'Sondage Numero 1', '2015-08-05 22:00:00', '2015-09-05 22:00:00'),
(2, 'Test de création d''un sondage sur la vie d''un espèce rarement connu dans le centre Est de l''Afrique du nord. Il s''agit d''une araignée qui a  survécu des décennies!    ', '2014-03-05 23:00:00', '2016-01-05 23:00:00'),
(3, 'Test de création d''un sondage sur la vie d''un espèce rarement connu dans le centre Est de l''Afrique du nord. Il s''agit d''une araignée qui a  survécu des décennies!    ', '2014-03-05 23:00:00', '2016-01-05 23:00:00'),
(4, 'Test de création d''un sondage sur la vie d''un espèce rarement connu dans le centre Est de l''Afrique du nord. Il s''agit d''une araignée qui a  survécu des décennies!    ', '2014-03-05 23:00:00', '2016-01-05 23:00:00'),
(5, 'Test de création d''un sondage sur la vie d''un espèce rarement connu dans le centre Est de l''Afrique du nord. Il s''agit d''une araignée qui a  survécu des décennies!    ', '2014-03-05 23:00:00', '2016-01-05 23:00:00'),
(6, 'Sondage débile ', '2014-03-05 23:00:00', '2016-01-05 23:00:00'),
(7, 'Sondage sans sens!', '2014-03-05 23:00:00', '2015-12-05 23:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(24) NOT NULL,
  `prenom` varchar(24) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `username`, `password`, `email`, `admin`) VALUES
(1, 'user', 'user', 'user', '123', 'user@gmail.com', 0),
(2, 'admin', 'admin', 'admin', '321', 'admin@gmail.com', 1),
(3, 'Guillemenet', 'Catherine', 'Catherine', '123', 'Catherine_Guillemenet@amoa.fr', 0),
(4, 'Poittevin', 'Jérôme ', 'Jérôme', '123', 'Jérôme_Poittevin@amoa.fr', 0),
(5, 'Reynier', 'Florent', 'Florent', '123', 'Florent_Reynier@amoa.fr', 0),
(6, 'Brunet', 'Anne', 'Anne', '123', 'Anne_Brunet@amoa.fr', 0),
(7, 'Abjean', 'Jean-Marie', 'Jean-Marie', '123', 'Jean-Marie_Abjean@amoa.fr', 0),
(8, 'Perry', 'Eric', 'Eric.Perry', '123', 'Eric_Perry@amoa.fr', 0),
(9, 'Tucoulou', 'Dominique', 'Dominique', '123', 'Dominique_Tucoulou@amoa.fr', 0),
(10, 'Brillard', 'Régis', 'Régis', '123', 'Régis_Brillard@amoa.fr', 0),
(11, 'Le Duff', 'Yann', 'Yann', '123', 'Yann_Le_Duff@amoa.fr', 0),
(12, 'Deldon', 'Marianne', 'Marianne', '123', 'Marianne_Deldon@amoa.fr', 0),
(13, 'Barbedor', 'Isabelle', 'Isabelle', '123', 'Isabelle_Barbedor@amoa.fr', 0),
(14, 'Lesouef', 'Emmanuel', 'Emmanuel', '123', 'Emmanuel_Lesouef@amoa.fr', 0),
(15, 'Morin', 'Frédéric', 'Frédéric', '123', 'Frédéric_Morin@amoa.fr', 0),
(16, 'Duverdier', 'Marielle', 'Marielle', '123', 'Marielle_Duverdier@amoa.fr', 0),
(17, 'Brunet', 'Marceline', 'Marceline', '123', 'Marceline_Brunet@amoa.fr', 0),
(18, 'Moreau', 'Sophie', 'Sophie', '123', 'Sophie_Moreau@amoa.fr', 0),
(19, 'Schill-Fenninger', 'Hélène', 'Hélène', '123', 'Hélène_Schill-Fenninger@amoa.fr', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demandeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `voteValue` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `vote`
--

INSERT INTO `vote` (`id`, `demandeId`, `userId`, `voteValue`) VALUES
(1, 1, 2, 1),
(2, 3, 2, 1),
(3, 4, 2, 1),
(4, 2, 2, 1),
(5, 5, 2, 1),
(6, 6, 2, 1),
(7, 7, 2, 1),
(8, 14, 2, 1),
(9, 83, 1, 1),
(10, 78, 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
