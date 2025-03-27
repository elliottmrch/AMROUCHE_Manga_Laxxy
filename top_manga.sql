-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:42
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
-- Base de données : `top_manga`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date_naissance` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `date_naissance`) VALUES
(1, 'Miura Kentarou', '11-07-1966'),
(2, 'Araki Hirohiko', '7-05-1960'),
(3, 'Inoue Takehiko', '12-01-1967'),
(4, 'Oda Eiichiro', '01-01-1975'),
(5, 'Urasawa Naoki', '02-01-1960');

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `annee_publi` int(11) NOT NULL,
  `note` float NOT NULL,
  `description` varchar(1500) NOT NULL,
  `id_auteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`id`, `titre`, `annee_publi`, `note`, `description`, `id_auteur`) VALUES
(1, 'Berserk', 1989, 9.47, 'Guts, un ancien mercenaire désormais connu sous le nom de Black Swordsman, est en quête de vengeance. Après une enfance tumultueuse, il trouve enfin quelqu\'un qu\'il respecte et en qui il croit pouvoir avoir confiance, mais tout s\'écroule lorsque cette personne lui enlève tout ce qui est important pour lui dans le but de satisfaire ses propres désirs. Désormais marqué par la mort, Guts est condamné à un destin dans lequel il est poursuivi sans relâche par des êtres démoniaques.\r\n\r\nParti dans une quête effroyable et pleine de malheurs, Guts, armé d\'une épée massive et d\'une force monstrueuse, ne se laissera arrêter par rien, pas même par la mort, jusqu\'à ce qu\'il puisse enfin prendre la tête de celui qui l\'a dépouillé de son humanité et de celle qu\'il aimait.', 1),
(2, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 2004, 9.32, 'Dans le vieil Ouest américain, la plus grande course du monde est sur le point de commencer. Des milliers de personnes font la queue à San Diego pour parcourir plus de six mille kilomètres et tenter de remporter le grand prix de cinquante millions de dollars. L\'ère du cheval touchant à sa fin, les concurrents sont autorisés à utiliser tous les types de véhicules qu\'ils souhaitent. Les concurrents devront endurer des conditions éprouvantes, parcourant jusqu\'à cent kilomètres par jour à travers des terres incultes. La Course de la Boule d\'Acier est un événement unique en son genre.\r\n\r\nLe jeune Johnny Joestar, un ancien coureur hippique estropié, est venu à San Diego pour assister au départ de la course. Il y rencontre Gyro Zeppeli, un coureur qui porte deux boules d\'acier à la taille au lieu d\'un pistolet. Johnny voit Gyro utiliser l\'une de ses boules d\'acier pour libérer un pouvoir fantastique, obligeant un homme à se tirer dessus au cours d\'un duel. Au milieu de l\'action, Johnny touche par hasard la boule d\'acier et sent un pouvoir déferler dans ses jambes, lui permettant de se tenir debout pour la première fois depuis deux ans. Se jurant de découvrir le secret des billes d\'acier, Johnny décide de participer à la course, et c\'est ainsi que commence son étrange aventure à travers l\'Amérique dans le cadre de la course des billes d\'acier.', 2),
(3, 'Vagabond', 1998, 9.27, 'Dans le Japon du XVIe siècle, Shinmen Takezou est un jeune homme sauvage et brutal, tant dans son apparence que dans ses actes. Sa nature agressive lui a valu l\'opprobre et la peur de son village, ce qui l\'a conduit, avec son meilleur ami Matahachi Honiden, à s\'enfuir à la recherche de quelque chose de plus grandiose que la vie provinciale. Ils s\'enrôlent dans l\'armée des Toyotomi, aspirant à la gloire, mais lorsque les Toyotomi subissent une défaite cuisante face au clan Tokugawa lors de la bataille de Sekigahara, les deux amis s\'en sortent à peine vivants.\r\n\r\nAprès leur séparation, Shinmen rentre chez lui avec pour mission d\'informer la famille Hon\'iden de la survie de Matahachi. Au lieu de cela, il se retrouve dans la peau d\'un criminel recherché, accusé du meurtre supposé de son ami en raison de ses antécédents violents. Après avoir été capturé, il est pendu à un arbre et laissé pour mort. Un moine itinérant, le distingué Takuan Soho, prend pitié de \"l\'enfant du diable\", libère secrètement Shinmen et le baptise d\'un nouveau nom pour éviter qu\'il ne soit poursuivi par les autorités : Musashi Miyamoto.\r\n\r\nVagabond est une réécriture fictive de la vie de l\'un des plus célèbres sabreurs du Japon, le \"Saint du sabre\" Musashi Miyamoto - son ascension d\'un sabreur n\'ayant d\'autre désir que de devenir \"Invincible sous les cieux\" à un guerrier éclairé qui apprend peu à peu l\'importance des amis proches, de la réflexion sur soi et de la vie elle-même.', 3),
(4, 'One Piece', 1997, 9.22, 'Gol D. Roger, surnommé le roi des pirates, est sur le point d\'être exécuté par le gouvernement mondial. Mais juste avant sa mort, il confirme l\'existence d\'un grand trésor, One Piece, situé quelque part dans le vaste océan connu sous le nom de Grand Line. Annonçant que le One Piece peut être revendiqué par quiconque est assez digne pour l\'atteindre, le roi des pirates est exécuté et le Grand Âge des Pirates commence.\r\n\r\nVingt-deux ans plus tard, un jeune homme du nom de Monkey D. Luffy est prêt à se lancer dans sa propre aventure, à la recherche du One Piece et à devenir le nouveau roi des pirates. Armé d\'un chapeau de paille, d\'un petit bateau et d\'un corps élastique, il entreprend un voyage fantastique pour rassembler son propre équipage et un navire digne de ce nom qui leur permettra de franchir la Grand Line et de revendiquer le plus grand statut en haute mer.', 4),
(5, 'Monster', 1994, 9.16, 'Kenzou Tenma, un neurochirurgien japonais renommé travaillant dans l\'Allemagne de l\'après-guerre, est confronté à un choix difficile : opérer Johan Liebert, un orphelin au bord de la mort, ou le maire de Düsseldorf. Finalement, Tenma décide de jouer sa réputation en sauvant Johan, laissant le maire pour mort.\r\n\r\nEn conséquence, le directeur de l\'hôpital, Heinemann, prive Tenma de son poste et Eva, la fille de Heinemann, rompt ses fiançailles. Déshonoré et rejeté par ses collègues, Tenma perd tout espoir de réussir sa carrière, jusqu\'à ce que le meurtre mystérieux de Heinemann lui donne une nouvelle chance.', 5);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `id_manga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom`, `description`, `id_manga`) VALUES
(1, 'Guts', 'Guts est le protagoniste de l\'histoire. C\'est un homme grand et musclé qui possède une énorme épée, le Dragon Slayer, et une prothèse de l\'avant-bras gauche dotée d\'une poignée magnétique qui dissimule également un canon. Guts est un héros tragique ; il est né comme quelqu\'un qui peut lutter contre la Causalité, mais qui semble incapable de l\'affecter à grande échelle.', 1),
(2, 'Griffith', 'Griffith est le chef charismatique et le fondateur de la bande du Faucon.\r\n\r\nExtraordinairement charismatique, intelligent et beau, son habileté au sabre et ses tactiques lui confèrent, ainsi qu\'à sa bande, une réputation d\'invincibilité qui lui a permis de gagner les faveurs du roi du Midland pendant la guerre qui opposait le Midland à l\'Empire de Chuder, longue d\'un siècle.', 1),
(3, 'Gyro', 'Né Julius Caesar Zeppeli, mais plus communément appelé \"Gyro Zeppeli\".\r\n\r\nGyro a une personnalité arrogante et flamboyante, semblant avoir une haute opinion de lui-même. Cependant, il peut être animé par des émotions pour d\'autres personnes et devenir réaliste et sérieux lorsqu\'un problème se présente. Comme la plupart des archétypes de Manga, Gyro est incroyablement intelligent quand il le faut. Ses traits corporels les plus caractéristiques sont ses cheveux longs, son chapeau western et ses dents en métal sur lesquelles on peut lire \"GO ! GO ! ZEPPELI\", qu\'il dévoile chaque fois qu\'il sourit à quelqu\'un. Son rire/gloussement caractéristique est \"Nyo ho ho ho ho~.\"', 2),
(4, 'Johnny', 'Johnny Joestar, également connu sous le nom de \"Joe Kid\" ou \"JoJo\", était un prodige de la course automobile. Cependant, alors qu\'il fait la queue pour assister à une pièce de théâtre, la fille qui l\'accompagne le convainc de couper la file d\'attente et de soudoyer les videurs pour qu\'ils expulsent le jeune qui se trouve en tête de file et qui a attendu toute la nuit. Le jeune a tiré sur Johnny, qui s\'est retrouvé paralysé à partir de la taille et a été envoyé à l\'hôpital, où il a subi des violences physiques. Ayant perdu tous les amis et le respect qu\'il avait gagnés en tant que jockey, personne ne lui rendit visite pendant son séjour à l\'hôpital.\r\n\r\nVers le début de la série Steel Ball Run, Johnny Joestar rencontre Gyro Zeppeli et se relève en touchant la boule d\'acier de Gyro. Croyant que Gyro était capable de lui apprendre à marcher, Johnny rejoignit la Course de la Boule d\'Acier et le suivit pour être entraîné.', 2),
(5, 'Musashi ', 'Miyamoto Musashi (1584 - 1645) ou Shinmen Takezo (son nom de naissance) s\'est embarqué très jeune dans un voyage pour devenir le plus fort des samouraïs, après avoir été exilé de son propre village. Musashi est le fils d\'une famille de samouraïs, dont le père était l\'un des samouraïs les plus renommés du pays. L\'une des principales raisons qui poussent Musashi à exceller dans le combat au sabre est son désir de vaincre son père, qui l\'a durement traité pendant son enfance en raison de son incapacité à se rebeller.\r\n\r\nMusashi est unique en termes d\'habileté au sabre en raison des mouvements inhabituels et du manque de style qu\'il utilise. Cela s\'explique par le fait qu\'il a passé la majeure partie de son temps dans la forêt, qualifié d\'enfant démon par son village en raison de sa nature avilissante et méchante.', 3),
(6, 'Kojirou ', 'Le légendaire rival de Miyamoto Musashi. Élevé par Kanemaki Jisai, après avoir été retrouvé bébé dans un cercueil flottant sur l\'océan.\r\n\r\nDès son plus jeune âge, il se passionne pour les sabres et l\'escrime, et possède une capacité quasi préternaturelle à réagir aux mouvements de ses adversaires.\r\n\r\nKojirou est sourd et muet, bien qu\'il sache lire et écrire. Sa personnalité est très enjouée, presque enfantine. Ittousai a également évoqué la possibilité que les yeux de Kojirou soient devenus plus développés pour compenser son manque d\'audition.', 3),
(7, 'Luffy ', 'Luffy est le capitaine des Pirates du Chapeau de Paille. Il est le meilleur ami de chacun d\'entre eux et les apprécie par-dessus tout. À première vue, Luffy ne semble pas très intelligent. Il voit souvent les choses de manière enfantine et se laisse facilement surprendre par les choses les plus simples. Cependant, parce qu\'il voit le monde d\'une manière simple et directe, il est parfois la seule personne à pouvoir voir au-delà des événements et à savoir ce qu\'il faut faire.\r\n\r\nLuffy semble avoir un appétit inextinguible, une caractéristique commune à l\'archétype japonais du jeune héros/aventurier (parfois simple d\'esprit) au cœur d\'or ; peut-être la faim est-elle plus grande dans le cas de Luffy en raison de son estomac élastique. Luffy est également l\'un des nombreux personnages dont l\'initiale du deuxième prénom est \"D\".', 4),
(8, 'Zoro', 'Zoro est le premier membre de l\'équipage à être recruté par Luffy. Zoro est un épéiste talentueux qui combat avec son propre style d\'épée, connu sous le nom de santoryu (style de combat à trois katanas). Pour ce faire, il utilise un katana dans chaque main et un autre dans sa bouche. On le voit également se battre avec un ou deux sabres seulement. Lors d\'un combat sérieux, il noue sur sa tête son bandana, normalement attaché au bras.\r\n\r\nBien qu\'il ne soit pas un samouraï, il semble conserver un certain degré de bushido, et on le prend souvent pour un samouraï. Contrairement à Luffy et à la plupart des autres pirates du Chapeau de paille, Zoro est connu pour tuer ses adversaires s\'il le faut, mais jamais de sang-froid.', 4),
(9, 'Johan', 'Johan Liebert est le \"monstre\" éponyme de l\'histoire et le mystère de son passé est au cœur de l\'intrigue. On l\'a qualifié de monstre, de prochain Adolf Hitler et même de diable en personne. Johan Liebert a reçu une balle dans la tête à un jeune âge, mais il a été sauvé de la mort par le Dr Tenma. C\'est pourquoi il lui est très reconnaissant. Il a passé une partie de sa vie dans différents endroits sous différents pseudonymes et possède un charisme et une intelligence extraordinaires. Il utilise ses dons pour manipuler et corrompre cruellement les autres, souvent sans autre but apparent que de causer souffrance et destruction. Son objectif initial, comme il l\'a déclaré lorsqu\'il était jeune, est d\'être le dernier survivant à la fin du monde, bien que vers la fin il décide d\'un destin différent. L\'un des thèmes de Monster est la capacité des individus à se transformer en monstres ; Johan joue souvent le rôle de catalyseur direct et indirect de cette transformation. Johan est également très attaché à sa sœur jumelle, Nina Fortner/Anna Liebert, et refuse de l\'abandonner.', 5),
(10, 'Kenzou Tenma', 'Le docteur Kenzou Tenma est un neurochirurgien japonais qui travaille à l\'Eisler Memorial Hospital de Düsseldorf. Au début de Monster, il a les faveurs du directeur du service pour ses prodigieuses compétences chirurgicales. Après une crise de conscience, il choisit de sauver la vie d\'un jeune garçon plutôt que celle du maire de la ville, ce qui lui vaut une rétrogradation injuste. Il est ensuite soupçonné de meurtre lorsque le directeur du service et plusieurs médecins éminents sont tués quelques semaines plus tard. Ce n\'est que neuf ans plus tard que le Dr Tenma apprend que l\'auteur des meurtres de l\'hôpital n\'est autre que le garçon qu\'il a sauvé des années auparavant, Johan Liebert. Rongé par la culpabilité, il décide de retrouver Johan et de mettre fin à la vie de ce \"monstre\" qu\'il se sent responsable d\'avoir créé. Malgré sa mission, le Dr Tenma est un humaniste qui se soucie sincèrement de la vie des autres. Ces actes de bonté lui confèrent une grande influence sur les gens qu\'il rencontre.', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
