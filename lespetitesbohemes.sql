-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 09 déc. 2022 à 16:09
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lespetitesbohemes`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2022_12_09_132407_create_products_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_title_unique` (`title`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Et magnam consequatur ea.', 'deleniti-eius-sit-officiis', 'Non sapiente assumenda similique.', 'Perferendis quia et perferendis dolorem assumenda officia sunt. Ab quia assumenda delectus voluptatum similique ut eos aliquid. Repellat in dolor perferendis quos quas.', 20900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(2, 'Soluta laboriosam nesciunt ut recusandae porro.', 'qui-in-veritatis-illo-qui', 'Unde sint sint aut facilis sit rerum.', 'Qui vel ea numquam nobis aut. Similique reiciendis nihil recusandae. Eligendi ex vitae maxime ipsum ipsum. Est mollitia dolor ut deserunt perspiciatis molestiae.', 17200, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(3, 'Eaque odio modi voluptate.', 'recusandae-et-eligendi-culpa-quaerat-voluptates-rerum-mollitia', 'Tempore alias deleniti et dolor sunt officiis.', 'Hic sit iusto eum sunt fuga aperiam quas. Vitae ut dolores atque ducimus quia nihil veritatis expedita. Nostrum aut ullam eius odio. Cumque sunt nesciunt error excepturi enim reprehenderit earum.', 17700, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(4, 'Sunt ad praesentium.', 'ut-deleniti-aspernatur-deserunt', 'Laudantium harum a alias consectetur vel enim.', 'Aut ut officia illum nisi. Sed autem ducimus nostrum. Sit sed aut ad. Aut aliquam dolor qui dolores libero aut. Culpa sed hic nam ut. Doloribus eius sed dolorem minus quia incidunt.', 14800, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(5, 'Aut quidem voluptate.', 'ipsum-quo-necessitatibus-et-aliquam-veniam-cumque-aut', 'Veniam eos non autem quaerat iure sit.', 'Ut nisi corporis dolores debitis eos unde quo reiciendis. Suscipit ea perferendis provident sed suscipit.', 6200, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(6, 'Et repellat est doloribus iusto unde.', 'voluptatum-corporis-qui-temporibus-eaque-voluptatibus-nemo', 'Maxime reprehenderit consequatur autem ut vel cupiditate.', 'Sit modi minima unde eos nisi quia. Rerum alias molestiae laboriosam quis. Autem velit deleniti id sunt at deserunt ipsa.', 3900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(7, 'Itaque officia in at.', 'autem-distinctio-at-ad', 'Sit ut ipsa sed iusto id.', 'Ipsam quae est ratione ut. Ex doloribus facilis qui asperiores dolore. Ad sunt labore aut provident ratione dolor voluptas.', 14800, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(8, 'Rerum nisi ut autem.', 'quis-optio-quis-nostrum', 'Sed esse vel sunt omnis et veritatis.', 'Sed ut neque cupiditate possimus cumque quod accusamus. Corrupti corrupti recusandae est praesentium optio placeat. Adipisci totam quisquam aut adipisci.', 8000, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(9, 'Minima commodi quas perspiciatis in.', 'sunt-maxime-omnis-voluptas-quidem-eos-sed', 'Ipsum quos qui eligendi.', 'Officiis reiciendis nam voluptate dolores. Eius fuga quidem consequatur blanditiis. Ex earum vero voluptatem consequatur at.', 7100, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(10, 'Optio quam quasi deleniti non repudiandae.', 'fugiat-ducimus-rerum-sed-eos', 'Dolore ullam soluta laudantium est.', 'Voluptatum cumque beatae eum sit tenetur magnam. Maxime voluptatum qui est non. Tenetur et accusamus quis in unde quo ea ea.', 6200, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(11, 'Mollitia cupiditate repudiandae.', 'placeat-deleniti-enim-assumenda-quia-dolor', 'Dolor perspiciatis velit nobis inventore.', 'Nulla eius ducimus odit autem aperiam. Iure animi sunt sapiente. Qui ad non voluptatem nam.', 12200, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(12, 'Sunt ab voluptas.', 'facilis-fugiat-enim-dicta-quasi-sint-delectus', 'Est et inventore aliquam est.', 'Dolores harum a blanditiis aut consequatur quod architecto et. Dolores perspiciatis magnam deserunt ad inventore consectetur quibusdam. Consequatur sapiente et doloremque.', 10800, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(13, 'Vel laboriosam sit.', 'commodi-illo-similique-eum-delectus-nisi-repellendus-velit-eligendi', 'Aperiam et distinctio voluptas sit sed inventore.', 'In iste earum architecto esse aut qui recusandae. Et magnam natus reprehenderit temporibus. Mollitia delectus ut perferendis in et rerum qui.', 12800, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(14, 'Voluptatem magnam enim voluptas sit.', 'minima-iure-eos-dolor-et-dolores-tempora', 'Nam dignissimos dolore perspiciatis veniam.', 'Sint quia voluptas optio ut nihil. Eius sit hic omnis unde porro. Aperiam nesciunt fugiat laudantium iure ea. Exercitationem expedita reprehenderit molestiae accusantium rerum nobis non.', 12500, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(15, 'Quibusdam nam nemo mollitia corrupti.', 'impedit-consectetur-vel-necessitatibus-quia-et-sit-ducimus', 'Unde qui assumenda adipisci dolores aspernatur quidem.', 'Sit repudiandae dolores illum quaerat officia laudantium tempore. Provident dolor rem aut et. Quos aliquam odit id et et rem.', 6900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(16, 'Recusandae quis voluptas necessitatibus.', 'sint-rem-esse-rem-sed-id-suscipit-illo', 'Quia aut modi voluptas qui consectetur asperiores.', 'Accusantium quaerat ut id suscipit ea neque. Nemo voluptas quia quis veniam nesciunt.', 2900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(17, 'Sint laborum natus fuga suscipit.', 'a-reiciendis-voluptatum-nihil-sit-est-at', 'Et fugit perferendis asperiores voluptas.', 'Optio enim sed architecto aut non. Nostrum amet in ut dolorem velit eos a. Consequatur aut quod aliquid a. Qui ut explicabo laudantium nostrum deleniti quisquam molestiae ratione.', 26900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(18, 'Ut nihil et voluptatem praesentium.', 'mollitia-nulla-nemo-nesciunt', 'Praesentium optio veniam veritatis vel earum.', 'Sed nobis autem pariatur rem nesciunt itaque. Et odio animi asperiores et. Et non magni recusandae cupiditate fuga vero sit aspernatur.', 16800, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(19, 'Delectus qui officia quia eveniet ipsam.', 'maxime-dicta-laboriosam-autem-nisi-ea-atque-et-iusto', 'Earum aspernatur id nihil suscipit.', 'Deleniti ut temporibus sequi earum impedit reprehenderit voluptatibus vitae. Est perferendis enim nihil laboriosam debitis incidunt enim.', 19900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(20, 'Fugiat sit quam.', 'ad-ducimus-illum-et-ea-sit-voluptas', 'Harum est autem placeat rerum.', 'Fugiat sit voluptatem facere expedita et. Neque ut est qui delectus consequatur dolorum sapiente. Ea placeat fuga dignissimos iure nam.', 9500, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(21, 'Enim sunt est esse maxime.', 'dolorem-tempora-quod-et-quia-numquam-est', 'Et quibusdam et nulla quisquam necessitatibus id.', 'Tempore voluptatem nostrum optio corrupti autem et. Dignissimos commodi accusamus molestias. Voluptatibus ullam minima debitis vel iste.', 24700, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(22, 'Dolorum modi corporis sunt.', 'accusamus-ab-aut-suscipit', 'Harum sint et quas.', 'Rerum recusandae ut veniam quis itaque tenetur excepturi. Qui et aspernatur quia molestias neque velit. Non impedit quis corrupti odit sapiente ipsa voluptatem. Dolorem dicta quaerat commodi.', 3400, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(23, 'Dolor eos aut eius perferendis ullam.', 'aspernatur-totam-sapiente-dignissimos-recusandae', 'Dolorem molestias architecto quia et vitae.', 'Optio repudiandae rerum autem in laborum quas est voluptate. Vel voluptas non odit. Saepe nobis nulla exercitationem eos iste. Odio numquam et voluptate exercitationem.', 14900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(24, 'Qui qui eligendi.', 'minima-rerum-voluptas-architecto', 'Accusamus et aut omnis perferendis voluptatem fugiat.', 'Aut commodi explicabo unde. Perspiciatis eos asperiores dolore eum vitae. Laudantium in laboriosam consequatur non.', 3200, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(25, 'Commodi vel omnis.', 'iure-dolorem-quasi-animi-ullam-impedit-officiis-adipisci', 'Amet rerum nobis non accusamus quo quod.', 'Aut cum consequatur impedit pariatur et. Perferendis porro molestiae itaque repudiandae quo quaerat. Expedita debitis praesentium voluptas. Tempora ratione rem et magni molestiae dolorem.', 19800, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(26, 'Aut laboriosam deserunt in corrupti qui.', 'dolorum-incidunt-rem-est-laborum-ut-odit-corporis', 'Provident facilis dolorem sit a.', 'Rerum harum similique voluptas dolor sapiente. Sint dignissimos accusantium sed tempore. Quod tempore quisquam consequatur iusto atque.', 14600, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(27, 'Et aperiam nesciunt numquam.', 'alias-dolorem-reiciendis-sit-rerum', 'Exercitationem natus rem ullam voluptas quaerat neque.', 'Aut doloremque ea nostrum sit modi doloribus. Impedit provident sint ullam eaque. Accusantium et laborum distinctio natus est et. Et saepe autem atque et asperiores iure expedita.', 7200, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(28, 'Numquam ut eum omnis numquam.', 'omnis-voluptatum-qui-necessitatibus-sint-at', 'Sunt qui et est.', 'Facere et ut qui deserunt. Qui magni illo ut ullam. Qui perspiciatis molestias voluptatum beatae perspiciatis tempora. Aut magnam velit error et mollitia soluta explicabo.', 17700, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(29, 'Eligendi harum et impedit dolore.', 'ea-qui-dolor-porro-exercitationem-enim', 'Est aut aspernatur aliquam assumenda.', 'Id consequatur ut ipsum unde consequatur iusto porro deleniti. Et ducimus vero voluptates molestias nam veritatis in. Soluta tempore quis illum repellat quos.', 12000, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45'),
(30, 'Sapiente facere debitis et unde.', 'voluptates-voluptas-veniam-qui-vero-tempora', 'Debitis suscipit aut saepe.', 'Qui voluptate est voluptatem aut veritatis. Qui velit autem sit sed repellat sint veniam. Velit facilis dolorem dolorem. Veritatis optio dolor voluptatem laudantium asperiores in.', 4900, 'https://via.placeholder.com/200*250', '2022-12-09 14:01:45', '2022-12-09 14:01:45');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
