--
-- Table structure for table `acteur`
--

DROP TABLE IF EXISTS `acteur`;
CREATE TABLE `acteur` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `anniversaire` date DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `id_imdb` varchar(255) DEFAULT NULL,
  `identite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `INDEX_ACTEUR_ID_IMDB` (`id_imdb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee` int(11) DEFAULT NULL,
  `id_imdb` varchar(255) DEFAULT NULL,
  `imdb_href` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `traite` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `INDEX_FILM_ID_IMDB` (`id_imdb`),
  KEY `INDEX_FILM_NOM` (`nom`),
  KEY `INDEX_FILM_ANNEE` (`annee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `film_genre`
--

DROP TABLE IF EXISTS `film_genre`;
CREATE TABLE `film_genre` (
  `id_film` bigint(20) NOT NULL,
  `id_genre` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `film_pays`
--

DROP TABLE IF EXISTS `film_pays`;
CREATE TABLE `film_pays` (
  `id_film` bigint(20) NOT NULL,
  `id_pays` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `film_realisateur`
--

DROP TABLE IF EXISTS `film_realisateur`;
CREATE TABLE `film_realisateur` (
  `id_film` bigint(20) NOT NULL,
  `id_realisateur` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE `pays` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

--
-- Table structure for table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
CREATE TABLE `realisateur` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `anniversaire` date DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `id_imdb` varchar(255) NOT NULL,
  `identite` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10313 DEFAULT CHARSET=utf8;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `id_acteur` bigint(20) DEFAULT NULL,
  `id_film` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqci566nxqijcpn1fxa1mfrj60` (`id_acteur`),
  KEY `INDEX_ROLE_ID_FILM_ID_ACTEUR` (`id_film`,`id_acteur`),
  CONSTRAINT `FKdphj0qhdfu7vg8lr42x6vq71h` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  CONSTRAINT `FKqci566nxqijcpn1fxa1mfrj60` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Dump completed on 2020-12-13 20:46:59
