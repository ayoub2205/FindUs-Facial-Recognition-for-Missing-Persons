-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 23 juin 2023 à 01:15
-- Version du serveur : 10.4.24-MariaDB-log
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `findus`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add missing person', 7, 'add_missingperson'),
(26, 'Can change missing person', 7, 'change_missingperson'),
(27, 'Can delete missing person', 7, 'delete_missingperson'),
(28, 'Can view missing person', 7, 'view_missingperson'),
(29, 'Can add contact', 8, 'add_contact'),
(30, 'Can change contact', 8, 'change_contact'),
(31, 'Can delete contact', 8, 'delete_contact'),
(32, 'Can view contact', 8, 'view_contact'),
(33, 'Can add contact us', 9, 'add_contactus'),
(34, 'Can change contact us', 9, 'change_contactus'),
(35, 'Can delete contact us', 9, 'delete_contactus'),
(36, 'Can view contact us', 9, 'view_contactus');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$40VwAy85IC4yc734L4WqiC$rtYTmVHJDcm7tRAGuf29ms1qUvlO7Nj98tZNLKhy1Zc=', '2023-06-22 17:48:19.483887', 0, 'Benlkebir@gmail.com', '', '', '', 0, 1, '2023-06-22 17:48:12.416663'),
(2, 'pbkdf2_sha256$600000$P8HTCpZB7Rmij2YjoqpKkB$g0wXMeNpt373+CuVTZWb8ZFf6RvvgbjX1Z1W0fQFLaM=', '2023-06-22 17:51:48.008947', 0, 'Karim@gmail.com', '', '', '', 0, 1, '2023-06-22 17:51:40.203671'),
(3, 'pbkdf2_sha256$600000$7l3o7LVStT3cIHdasRfPRO$lnzyvjme6mq8eZowsWfzznXUAPLRZZS7sVsQPZap0+A=', '2023-06-22 17:54:10.838516', 0, 'chermi@gmail.com', '', '', '', 0, 1, '2023-06-22 17:54:00.063879'),
(4, 'pbkdf2_sha256$600000$gebQTsNry60DJeCXkH4Dzy$rAsBE0Zl+jLCk1BtuZpL3r0x6OoEF9PN63XpkY9P9WU=', '2023-06-22 18:01:21.556937', 0, 'khair@gmail.com', '', '', '', 0, 1, '2023-06-22 18:01:11.047405'),
(5, 'pbkdf2_sha256$600000$hn5bBoATi1l5kHINVPi3yO$Ajuh5N+ws4Sr1s3Nlyzawv3HORGR9gjAMjlW6j71ocE=', '2023-06-22 18:04:40.659674', 0, 'SABAR@gmail.com', '', '', '', 0, 1, '2023-06-22 18:04:32.067730'),
(6, 'pbkdf2_sha256$600000$Bchim2XboObXpZSewTVZwm$FhbmW8Wwi3qqYjPitaMuIivWR2DokzQO2zCfBHBRChU=', '2023-06-22 18:40:19.239363', 0, 'Allen@gmail.com', '', '', '', 0, 1, '2023-06-22 18:40:06.630034'),
(7, 'pbkdf2_sha256$600000$ekD9MgzagiWsPe8whj98e0$WQ0F9O/Wj4GNMi+sq3/eziOnYf3E8wzIeqQ01Z7y8EY=', '2023-06-22 18:43:51.287394', 0, 'add@gmail.com', '', '', '', 0, 1, '2023-06-22 18:43:35.594592'),
(8, 'pbkdf2_sha256$600000$2d1VX2ueACB4bD0DluFQzN$WomaEJt5/A/WoOfBQdYqWEDlhUh58db5FUlynXhLnVU=', '2023-06-22 18:58:15.226175', 0, 'email@gmail.com', '', '', '', 0, 1, '2023-06-22 18:58:06.986662'),
(9, 'pbkdf2_sha256$600000$UcoDyM5IbastNqm1GDf6Ht$ToQMl7TLz4FiJydb4l6p0r+if3T5hu+6lFKLdaVzwqM=', '2023-06-22 22:33:38.868450', 0, 'email2@gmail.com', '', '', '', 0, 1, '2023-06-22 22:33:27.683205'),
(10, 'pbkdf2_sha256$600000$HQmehSDGKzapYXt1GsA62D$k1UjSRSiRT2uAGWJRzhbI+Dt4m4tIB4ZLeJurBFQ6oY=', '2023-06-22 22:46:39.334935', 0, 'email5@gmail.com', '', '', '', 0, 1, '2023-06-22 22:46:30.957960'),
(11, 'pbkdf2_sha256$600000$c66xGJAA2KeUBMPXSPHtXK$0IqsO7nbW/YFXJ6413kV3NuUatp6R9nQ8sJ8xw0QCe8=', '2023-06-22 22:52:01.413589', 0, 'emailtest@gmail.com', '', '', '', 0, 1, '2023-06-22 22:51:53.342752');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'findus', 'contact'),
(9, 'findus', 'contactus'),
(7, 'findus', 'missingperson'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-22 17:37:18.928077'),
(2, 'auth', '0001_initial', '2023-06-22 17:37:19.786324'),
(3, 'admin', '0001_initial', '2023-06-22 17:37:19.996534'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-22 17:37:20.007528'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-22 17:37:20.021520'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-22 17:37:20.231389'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-22 17:37:20.334329'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-22 17:37:20.363329'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-22 17:37:20.382317'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-22 17:37:20.475260'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-22 17:37:20.481258'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-22 17:37:20.494250'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-22 17:37:20.526229'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-22 17:37:20.577197'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-22 17:37:20.614175'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-22 17:37:20.630166'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-22 17:37:20.665144'),
(18, 'findus', '0001_initial', '2023-06-22 17:37:20.709117'),
(19, 'findus', '0002_missingperson_publication_date_missingperson_upload', '2023-06-22 17:37:20.842035'),
(20, 'findus', '0003_alter_missingperson_publication_date', '2023-06-22 17:37:20.853027'),
(21, 'findus', '0004_remove_missingperson_details_and_more', '2023-06-22 17:37:21.123750'),
(22, 'findus', '0005_missingperson_details', '2023-06-22 17:37:21.149733'),
(23, 'findus', '0006_login', '2023-06-22 17:37:21.287243'),
(24, 'findus', '0007_remove_login_contact_login_email_alter_contact_email', '2023-06-22 17:37:21.651108'),
(25, 'findus', '0008_signup', '2023-06-22 17:37:21.698216'),
(26, 'findus', '0009_delete_login_delete_signup', '2023-06-22 17:37:21.728197'),
(27, 'findus', '0010_contactus', '2023-06-22 17:37:21.776166'),
(28, 'findus', '0011_alter_contactus_email', '2023-06-22 17:37:21.905087'),
(29, 'findus', '0012_delete_contactus', '2023-06-22 17:37:21.922052'),
(30, 'findus', '0013_contactus', '2023-06-22 17:37:21.969024'),
(31, 'sessions', '0001_initial', '2023-06-22 17:37:22.032984');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5tdpkhfkx1wsnqx1v9l1euw6ti8vc6js', '.eJxVjsEOwiAQRP-FsyENXWjx6N1vIAu7a1FDk0JPxn-3NT3odd7My7xUwLVNYa28hEzqrKw6_WYR04PLDuiO5TbrNJe25Kj3ij5o1deZ-Hk5un-CCeu0rR05I2g6GIyNBNaKG6NLUcSb3jEBiBekMWJvxo7BAnsLlhx7BpZhk-b61XJpOWHj7VNbVn5_AKJNQV8:1qCOfg:lu159EmoRoo-IZroZT1R5ME7RfeJ1cEdGHG7LNvOumk', '2023-06-22 18:34:40.664672'),
('8hr5tpqshy3ynoy9g2ategdk3zmikfia', 'e30:1qCTB4:njp7LfBBENVxQeQnVGbGwI6ohALRQe-vV-nZYIOc8iY', '2023-06-22 23:23:22.768909'),
('hvb221cr5udhxar6buf0gmti3hrtuh7f', '.eJxVjkEOwiAQRe_C2hAo0IBL956hGWAQ1EACdNV4d2nThS7n__dfZiMLrD0ua8O6JE-uRJPLb2bBvTDvhX9CfhTqSu41Wboj9GwbvReP79vJ_gkitDjWZpJKaS4cB2UnawUYreS4QGoe2BEHKwJw5hgMIAgTcJazYUpIxYc0tUOLuScHHcdPva74-QKDA0C7:1qCPVX:7UQNCBbiECNCe2vDEVrzQ_dgcTe7m18J6FCIdFXvUDE', '2023-06-22 19:28:15.231077');

-- --------------------------------------------------------

--
-- Structure de la table `findus_contact`
--

CREATE TABLE `findus_contact` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `missing_person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `findus_contact`
--

INSERT INTO `findus_contact` (`id`, `email`, `phone`, `missing_person_id`) VALUES
(1, 'Benlkebir@gmail.com', '0678543210', 442),
(2, 'Karim@gmail.com', '0621325678', 443),
(3, 'chermi@gmail.com', '0621325677', 444),
(4, 'khair@gmail.com', '0621325675', 445),
(5, 'SABAR@gmail.com', '0621125275', 446),
(6, 'allen@gmail.com', '0678543200', 447),
(7, 'Nolan@gmail.com', '0222222222', 448),
(8, 'Odomin@gmail.com', '0943279943', 449),
(9, 'OCHOA@gmail.com', '0678548210', 450),
(10, 'James@gmail.com', '0622334567', 451),
(11, 'email2@gmail.com', '0621325272', 452),
(12, 'emailtest@gmail.com', '0621325292', 453);

-- --------------------------------------------------------

--
-- Structure de la table `findus_contactus`
--

CREATE TABLE `findus_contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `findus_contactus`
--

INSERT INTO `findus_contactus` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'email2@gmail.com', 'email2@gmail.com', 'missing person', 'cc', '2023-06-22'),
(2, 'email2@gmail.com', 'emaild@gmail.com', 'missing person', 'vdvdv', '2023-06-22'),
(3, 'email2', 'email2@gmail.com', 'missing person', 'vsdvsd', '2023-06-22'),
(4, 'email4', 'email4@gmail.com', 'WWWWWWWWWWWWW', 'WWWWWWWWWWW', '2023-06-22'),
(5, 'contact_name', 'name@gmail.com', 'missing person', 'missing person was ............................', '2023-06-22');

-- --------------------------------------------------------

--
-- Structure de la table `findus_missingperson`
--

CREATE TABLE `findus_missingperson` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `last_seen_date` date NOT NULL,
  `last_seen_city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `publication_date` date NOT NULL,
  `upload` varchar(1000) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `findus_missingperson`
--

INSERT INTO `findus_missingperson` (`id`, `nom`, `prenom`, `age`, `gender`, `last_seen_date`, `last_seen_city`, `region`, `publication_date`, `upload`, `details`) VALUES
(442, 'Benlkebir', 'Mbarek', 62, 'male', '2023-06-18', 'Casablanca', 'Casablanca-Settat', '2023-06-22', '442.png', 'He got out at 6 and a half and headed and we don\'t know anything about his destination s.'),
(443, 'Hamza', 'karim', 21, 'male', '2023-04-30', 'Tanger', 'Tanger-Tétouan-Al Hoceima ', '2023-06-22', '443.png', 'He got out and went to the train from Abu Qurqas at 6 and a half and headed and we don\'t know anything about his destination as evidenced by the cameras in Abu Qurqas.'),
(444, 'cherrmi   ', 'Tawfiq ', 24, 'male', '2023-04-26', 'Marrakech ', 'Marrakech-Tensift-Al Haouz', '2023-06-22', '444.png', 'A young man of short height'),
(445, 'Lkhir', 'Fatima ', 39, 'female', '2023-05-30', 'Meknes ', 'Fès-Meknès', '2023-06-22', '445.png', 'She got out and went to sepermarket  and headed and we don\'t know anything about her destination .'),
(446, 'Sabar', 'Lamia', 27, 'female', '2023-05-12', 'Tetouane', 'Tanger-Tétouan-Al Hoceima ', '2023-06-22', '446.png', 'She got out and went to the train from Abu Qurqas at 6 and a half and headed and we don\'t know anything about her destination as evidenced by the cameras in Abu Qurqas.'),
(447, 'James  ', 'Allen', 16, 'female', '2023-06-22', 'North Kansas ', 'Clay', '2023-06-22', '447.png', 'White / Caucasian'),
(448, 'Nolan  ', 'Flanagan', 54, 'male', '2023-06-17', 'Gulf Shores', 'Baldwin', '2023-06-22', '448.png', 'White / Caucasian'),
(449, 'Kimberly', 'Odomin', 40, 'female', '2023-05-16', 'Marshall', 'Kuslivak', '2023-06-22', '449.png', 'American Indian / Alaska Native'),
(450, 'Adrian ', 'Ochoa', 32, 'male', '2023-06-12', 'sprigdale', 'Washington', '2023-06-22', '450.png', ' Hispanic / Latino'),
(451, 'Yoblonski', 'James ', 13, 'male', '2023-06-12', 'Baraboo', 'Sauk', '2023-06-22', '451.png', ' White / Caucasian'),
(452, 'Benlkebir', 'Mbarek', 23, 'male', '2023-04-04', 'Casablanca', 'Casablanca-Settat', '2023-06-22', '452.png', 'information '),
(453, 'Nassr', 'Zouhair ', 23, 'male', '2023-03-20', 'Casablanca', 'Casablanca-Settat', '2023-06-22', '453.png', 'informations ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `findus_contact`
--
ALTER TABLE `findus_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `findus_contact_missing_person_id_3d44ae2f_fk_findus_mi` (`missing_person_id`);

--
-- Index pour la table `findus_contactus`
--
ALTER TABLE `findus_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `findus_missingperson`
--
ALTER TABLE `findus_missingperson`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `findus_contact`
--
ALTER TABLE `findus_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `findus_contactus`
--
ALTER TABLE `findus_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `findus_missingperson`
--
ALTER TABLE `findus_missingperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `findus_contact`
--
ALTER TABLE `findus_contact`
  ADD CONSTRAINT `findus_contact_missing_person_id_3d44ae2f_fk_findus_mi` FOREIGN KEY (`missing_person_id`) REFERENCES `findus_missingperson` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
