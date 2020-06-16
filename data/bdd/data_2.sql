-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table zf2_jobeet. category
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Listage des données de la table zf2_jobeet.category : ~4 rows (environ)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id_category`, `name`, `slug`) VALUES
	(1, 'Design', 'design'),
	(2, 'Programmation', 'programmation'),
	(3, 'Administrator', 'administrator'),
	(4, 'Manager', 'manager');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Listage de la structure de la table zf2_jobeet. job
CREATE TABLE IF NOT EXISTS `job` (
  `id_job` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `company` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `how_to_play` text NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_activated` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_job`),
  KEY `fk_job_category2` (`id_category`),
  CONSTRAINT `fk_job_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Listage des données de la table zf2_jobeet.job : ~13 rows (environ)
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` (`id_job`, `id_category`, `type`, `company`, `logo`, `url`, `position`, `location`, `description`, `how_to_play`, `is_public`, `is_activated`, `email`, `created_at`, `updated_at`) VALUES
	(1, 2, 'Plein-temps', 'Zend', NULL, 'http://framework.zend.com/', 'Web Developer', 'Paris, France', 'Vous avez déjà développé des sites avec Zend Framework 2 et vous souhaitez travailler avec des technologies Open-Source. Vous avez au minimum une epérience de 3 ans ou plus dans le developpement Web avec PHP ou Java et vous voulez participer au developpement de site Web 2.0 en utilisant le meilleur framework disponible.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'job@example.com', NULL, NULL),
	(2, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(3, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(4, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(5, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(6, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(7, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(8, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(9, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(10, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(11, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(12, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL),
	(13, 1, 'Mi-temps', 'Zend Extreme', NULL, 'http://php-underground.blospot.fr', 'Web Designer', 'Montpellier, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Envoyer un mail à test[at]test.fr', 1, 1, 'test@test.fr', NULL, NULL);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;

-- Listage de la structure de la table zf2_jobeet. user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table zf2_jobeet.user : ~0 rows (environ)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `username`, `email`, `display_name`, `password`, `state`) VALUES
	(1, 'admin', 'admin@admin.fr', 'Admin', '$2y$14$PScxr/eNq9CLsjWiTogYXeTpoYa3jrO7S3wXyQPm5.AOQA8KQQYdW', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Listage de la structure de la table zf2_jobeet. user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `parent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table zf2_jobeet.user_role : ~0 rows (environ)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`role_id`, `is_default`, `parent`) VALUES
	('admin', 0, 'user'),
	('guest', 1, NULL),
	('user', 0, 'guest');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Listage de la structure de la table zf2_jobeet. user_role_linker
CREATE TABLE IF NOT EXISTS `user_role_linker` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table zf2_jobeet.user_role_linker : ~0 rows (environ)
/*!40000 ALTER TABLE `user_role_linker` DISABLE KEYS */;
INSERT INTO `user_role_linker` (`user_id`, `role_id`) VALUES
	(1, 'admin');
/*!40000 ALTER TABLE `user_role_linker` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
