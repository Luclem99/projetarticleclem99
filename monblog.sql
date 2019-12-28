-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 28 déc. 2019 à 18:47
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `monblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(150) NOT NULL,
  `texte` text NOT NULL,
  `date` date NOT NULL,
  `publie` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `texte`, `date`, `publie`) VALUES
(1, 'lucas98', 'haeclucas98', '2019-11-19', 1),
(2, 'titre1', '\r\n\r\nHaec et huius modi quaedam innumerabilia ultrix facinorum impiorum bonorumque praemiatrix aliquotiens operatur Adrastia atque utinam semper quam vocabulo duplici etiam Nemesim appellamus: ius quoddam sublime numinis efficacis, humanarum mentium opinione lunari circulo superpositum, vel ut definiunt alii, substantialis tutela generali potentia partilibus praesidens fatis, quam theologi veteres fingentes Iustitiae filiam ex abdita quadam aeternitate tradunt omnia despectare terrena.\r\n\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nRogatus ad ultimum admissusque in consistorium ambage nulla praegressa inconsiderate et leviter proficiscere inquit ut praeceptum est, Caesar sciens quod si cessaveris, et tuas et palatii tui auferri iubebo prope diem annonas. hocque solo contumaciter dicto subiratus abscessit nec in conspectum eius postea venit saepius arcessitus.', '2019-10-06', 1),
(3, 'titre2', '\r\n\r\nHaec et huius modi quaedam innumerabilia ultrix facinorum impiorum bonorumque praemiatrix aliquotiens operatur Adrastia atque utinam semper quam vocabulo duplici etiam Nemesim appellamus: ius quoddam sublime numinis efficacis, humanarum mentium opinione lunari circulo superpositum, vel ut definiunt alii, substantialis tutela generali potentia partilibus praesidens fatis, quam theologi veteres fingentes Iustitiae filiam ex abdita quadam aeternitate tradunt omnia despectare terrena.\r\n\r\nIllud tamen te esse admonitum volo, primum ut qualis es talem te esse omnes existiment ut, quantum a rerum turpitudine abes, tantum te a verborum libertate seiungas; deinde ut ea in alterum ne dicas, quae cum tibi falso responsa sint, erubescas. Quis est enim, cui via ista non pateat, qui isti aetati atque etiam isti dignitati non possit quam velit petulanter, etiamsi sine ulla suspicione, at non sine argumento male dicere? Sed istarum partium culpa est eorum, qui te agere voluerunt; laus pudoris tui, quod ea te invitum dicere videbamus, ingenii, quod ornate politeque dixisti.\r\n\r\nRogatus ad ultimum admissusque in consistorium ambage nulla praegressa inconsiderate et leviter proficiscere inquit ut praeceptum est, Caesar sciens quod si cessaveris, et tuas et palatii tui auferri iubebo prope diem annonas. hocque solo contumaciter dicto subiratus abscessit nec in conspectum eius postea venit saepius arcessitus.', '2019-10-07', 0),
(20, '1111', '1111', '2019-10-15', 1),
(21, 'testtt', 'testtt', '2019-10-15', 1),
(22, 'testtttt', 'testtttttt', '2019-10-15', 1),
(23, 'titre111111111', 'Haec', '2019-11-12', 1),
(24, 'titre', 'Haec', '2019-11-12', 1),
(25, 'Lucas9899', 'Lucas9899', '2019-11-19', 1),
(26, 'Lucas9899', 'Lucas9899', '2019-11-19', 1),
(27, 'testtttttttttt', 'testttttttt', '2019-11-19', 1),
(28, 'testtttttttttt', 'testttttttt', '2019-11-19', 1),
(29, 'ttttttttttttttttttttttttttt', 'ttttttttttttttttttttttttttttttttt', '2019-11-19', 1),
(30, 'ttttttttttttttttttttttttttt', 'ttttttttttttttttttttttttttttttttt', '2019-11-19', 1),
(31, 'ttttttttttttttttttttttttttt', 'ttttttttttttttttttttttttttttttttt', '2019-11-19', 1),
(32, 'mmmmmmmmmmmmmmmmm', 'mmmmmmmmmmmmmmmmmmm', '2019-11-19', 1),
(33, 'llllllllllll', 'lllllllllllllllllll', '2019-11-19', 1),
(34, 'oooooooooooo', 'ooooooooooooooo', '2019-11-19', 1),
(35, 'erytyyrhghdhftgh', 'gdhjgdhhfgjghjngjhgj', '2019-11-19', 1),
(36, 'vvvvvvvvvvvv', 'vvvvvvvvvvvvvv', '2019-11-19', 1),
(37, 'y', 'y', '2019-11-19', 1),
(38, ',', ',', '2019-11-19', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `mdp` text CHARACTER SET utf8 NOT NULL,
  `sid` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `mdp`, `sid`) VALUES
(1, 'bcvb', 'bvcbcv', 'bcvb@gmail.com', 'fdssf', ''),
(2, 'clement', 'lucas', 'clementlucas@gmail.com', '123', '6f764d6f4636e86d98e96674bf8781bb'),
(3, 'clement', 'lucass', 'clementlucass@gmail.com', '1234', 'b69e3682d3b74ce80cd5336e484f1252');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
