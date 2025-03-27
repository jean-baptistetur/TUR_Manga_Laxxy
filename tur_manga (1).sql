-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:38
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tur_manga`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `nom` varchar(50) NOT NULL,
  `date de naissance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`nom`, `date de naissance`) VALUES
('Berserk', 1966),
('JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 1960),
('Monster', 1960),
('One Piece', 1975),
('Vagabond', 1967);

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `Titre` varchar(50) NOT NULL,
  `Année de publication` int(10) NOT NULL,
  `note` float NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`Titre`, `Année de publication`, `note`, `description`) VALUES
('Berserk', 1989, 9.47, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\r\n\r\nSetting out on a dreadful quest riddled with misfortune, Guts, armed with a massive sword and monstrous strength, will let nothing stop him, not even death itself, until he is finally able to take the head of the one who stripped him—and his loved one—of their humanity.'),
('JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 2011, 9.32, 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.'),
('Monster', 1994, 9.16, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.'),
('One Piece', 1997, 9.22, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.'),
('Vagabond', 2015, 9.27, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.');

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `nom` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`nom`, `description`) VALUES
('Berserk', 'Guts, renowned as the \"Black Swordsman\", is a former mercenary and branded wanderer who travels the world in a constant internal struggle between pursuing his own ends and upholding his attachments to those dear to him.'),
('JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 'Johnny Joestar (ジョニィ・ジョースター, Jonyi Jōsutā), born Jonathan Joestar (ジョナサン・ジョースター, Jonasan Jōsutā), is one of the main protagonists of the seventh part of the JoJo\'s Bizarre Adventure series, Steel Ball Run, and the seventh JoJo of the series. He also appears in flashbacks in the eighth part, JoJolion.\r\nThis content comes from JoJo\'s Bizarre Encyclopedia (https://jojowiki.com), and must be attributed to its authors if you are using it on another wiki or web page, as specified in the license.'),
('Monster', 'Fils d\'un médecin local japonais, Kenzô Tenma se rend en Allemagne pour suivre des études poussées de médecine, grâce à une bourse, qui feront de lui un neurochirurgien hors du commun. Il rencontre alors Rudy Gillen, futur expert en criminologie à qui il fera appel lors de sa poursuite de Johann. Les deux étudiants ne se fréquentent pas vraiment et le nouveau-venu est même aux yeux de Gillen un adversaire pour la place de premier de la classe.'),
('One Piece', 'Monkey D. Luffy is a teenage pirate who is the captain of the Straw Hat Pirates. He is on a quest to become the king of the pirates and find the One Piece. Luffy is stubborn, bull-headed, and emotional, but he also shows fierce loyalty to his friends and anyone in need of help.'),
('Vagabond', 'Hedonist and childhood friend of Musashi. Assumes Sasaki Kojiro\'s identity after a dying Tenki entrusts Kojiro\'s swordsmanship certificates to him. Later, after coming into contact with the genuine Kojiro, begins to identify himself as Sasaki Koujiro, an interpreter for Kojiro, the real Kojiro being deaf. He later becomes estranged from Musashi after a tense reunion, Matahachi displaying an intense jealousy to Musashi.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD KEY `FK` (`nom`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`Titre`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`nom`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD CONSTRAINT `FK` FOREIGN KEY (`nom`) REFERENCES `manga` (`Titre`);

--
-- Contraintes pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD CONSTRAINT `FK2` FOREIGN KEY (`nom`) REFERENCES `manga` (`Titre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
