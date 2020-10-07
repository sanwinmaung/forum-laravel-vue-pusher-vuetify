# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.26)
# Database: forum
# Generation Time: 2020-10-07 11:07:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(8,'Abcd','abcd','2020-09-24 14:37:31','2020-09-24 14:37:31'),
	(9,'helloone','helloone','2020-09-24 14:37:45','2020-09-24 14:37:45'),
	(11,'php','php','2020-09-24 15:24:33','2020-09-24 15:24:33'),
	(12,'New Cat Two','new-cat-two','2020-09-24 15:24:47','2020-09-24 15:36:04'),
	(13,'new flaviour','new-flaviour','2020-09-24 15:25:06','2020-09-24 15:35:58'),
	(14,'Test Category','test-category','2020-10-07 07:44:48','2020-10-07 07:44:48');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;

INSERT INTO `likes` (`id`, `reply_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,1,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(2,2,5,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(3,3,7,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(4,4,3,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(5,5,2,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(6,6,2,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(7,7,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(8,8,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(9,9,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(10,10,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(11,11,5,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(12,12,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(13,13,3,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(14,14,3,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(15,15,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(16,16,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(17,17,4,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(18,18,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(19,19,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(20,20,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(21,21,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(22,22,2,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(23,23,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(24,24,4,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(25,25,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(26,26,4,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(27,27,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(28,28,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(29,29,4,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(30,30,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(31,31,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(32,32,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(33,33,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(34,34,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(35,35,5,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(36,36,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(37,37,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(38,38,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(39,39,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(40,40,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(41,41,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(42,42,7,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(43,43,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(44,44,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(45,45,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(46,46,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(47,47,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(48,48,5,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(49,49,7,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(50,50,4,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(51,68,15,'2020-09-26 17:30:20','2020-09-26 17:30:20'),
	(63,70,17,'2020-09-26 11:38:51','2020-09-26 11:38:51'),
	(64,76,17,'2020-10-07 07:47:08','2020-10-07 07:47:08'),
	(65,78,17,'2020-10-07 08:21:22','2020-10-07 08:21:22');

/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2020_09_19_115817_create_questions_table',1),
	(5,'2020_09_19_120016_create_replies_table',1),
	(6,'2020_09_19_120034_create_categories_table',1),
	(7,'2020_09_19_120131_create_likes_table',1),
	(8,'2020_09_26_134725_create_notifications_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`)
VALUES
	('359a2534-1b6f-4663-ac39-8ea3aec67da0','App\\Notifications\\NewReplyNotification','App\\User',17,'{\"replyBy\":\"Aung Aung\",\"question\":\"Test Question One\",\"path\":\"\\/question\\/test-question-one\"}','2020-10-07 07:49:06','2020-10-07 07:46:49','2020-10-07 07:49:06'),
	('594d7af7-614d-4027-bba2-9e6695e59123','App\\Notifications\\NewReplyNotification','App\\User',17,'{\"replyBy\":\"Peter\",\"question\":\"Dolor dolorem repellat adipisci unde ut.\",\"path\":\"\\/question\\/dolor-dolorem-repellat-adipisci-unde-ut\"}','2020-09-26 19:58:02','2020-09-26 14:45:31','2020-09-26 19:58:02'),
	('a2b8fd9e-61f8-4003-83b4-b44f4b655a19','App\\Notifications\\NewReplyNotification','App\\User',17,'{\"replyBy\":\"Peter\",\"question\":\"Peter Questions\",\"path\":\"\\/question\\/peter-questions\"}','2020-09-26 19:51:37','2020-09-26 15:36:03','2020-09-26 19:51:37'),
	('c1751477-c77d-4fe7-84f4-2cea15b2cb03','App\\Notifications\\NewReplyNotification','App\\User',17,'{\"replyBy\":\"Aung Aung\",\"question\":\"Test Question One\",\"path\":\"\\/question\\/test-question-one\"}','2020-10-07 07:48:58','2020-10-07 07:48:22','2020-10-07 07:48:58'),
	('e9715824-e816-48de-9de5-680422360e3d','App\\Notifications\\NewReplyNotification','App\\User',17,'{\"replyBy\":\"Peter\",\"question\":\"Quibusdam qui non et odit est ut quo.\",\"path\":\"\\/question\\/quibusdam-qui-non-et-odit-est-ut-quo\"}','2020-09-26 18:28:51','2020-09-26 15:22:01','2020-09-26 18:28:51');

/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `title`, `slug`, `body`, `category_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'This is new','This is new','Lorem new ipsum',1,8,'2020-09-19 13:07:39','2020-09-19 17:47:47'),
	(3,'Quibusdam qui non et odit est ut quo.','quibusdam-qui-non-et-odit-est-ut-quo','Nisi perferendis ex nihil tenetur rerum et. Tenetur natus nihil rerum ipsam sit. Quaerat et veritatis voluptatem et optio.',2,7,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(4,'Ratione et excepturi sed.','ratione-et-excepturi-sed','Quasi alias et est tenetur quis ducimus unde. Nam voluptas esse accusamus corrupti. Quo iure commodi eligendi et. Debitis et ut dolores et earum labore. Atque quo totam veritatis architecto dolorum.',1,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(5,'Beatae placeat quis reiciendis numquam.','beatae-placeat-quis-reiciendis-numquam','Molestias dicta quas omnis sit. Sint ut voluptate iste asperiores. Sint consequatur est tempora sunt sit non.',2,3,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(6,'Minus quam sit nisi quasi.','minus-quam-sit-nisi-quasi','Voluptatibus quia recusandae debitis ad qui atque omnis. A nesciunt excepturi quam quo architecto et. Deserunt expedita alias explicabo quo. Explicabo ex quia aperiam velit.',5,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(7,'Dolor dolorem repellat adipisci unde ut.','dolor-dolorem-repellat-adipisci-unde-ut','Quia consequatur perferendis doloremque veniam voluptas. At illum officiis repudiandae dolorum veritatis qui corporis. Doloremque ut quo reprehenderit fugiat quo alias.',5,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(8,'Commodi dolorem excepturi et sunt minima.','commodi-dolorem-excepturi-et-sunt-minima','Ea qui repudiandae magnam harum nam quo. Quia cumque eos aut laudantium impedit. Quam a blanditiis incidunt explicabo a quis et. Occaecati aliquam perspiciatis rerum eveniet.',2,7,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(9,'Qui libero deleniti nihil hic.','qui-libero-deleniti-nihil-hic','Eos voluptas et inventore. Tempora ut omnis hic quae. Consequatur quod ea repellat magni.',3,4,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(10,'Unde repellendus nam est aut hic ipsa est.','unde-repellendus-nam-est-aut-hic-ipsa-est','Consequatur qui enim dolore eos reprehenderit. Suscipit dignissimos et necessitatibus inventore ut temporibus hic.',1,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(12,'This is title','this-is-title','Lorem ipsum',1,1,'2020-09-19 16:26:46','2020-09-19 16:26:46'),
	(13,'This is title Two','this-is-title-two','Lorem ipsum',1,1,'2020-09-19 16:28:53','2020-09-19 16:28:53'),
	(14,'This is new question','this-is-new-question','# Markdown',2,17,'2020-09-22 07:11:04','2020-09-22 07:11:04'),
	(15,'Title Three','title-three','# Title Three with markdown editor',3,17,'2020-09-22 08:35:30','2020-09-22 08:35:30'),
	(18,'Title Four','title-four','# This is fourth question.',6,17,'2020-09-22 09:12:27','2020-09-22 09:12:27'),
	(19,'This is Title Six','this-is-title-six','# Hello World',1,17,'2020-09-23 18:16:45','2020-09-23 18:16:45'),
	(21,'This is new gg','this-is-new-gg','# Hello EEE',6,15,'2020-09-23 19:03:06','2020-09-23 20:26:40'),
	(22,'New One','new-one','# new one',6,15,'2020-09-24 06:07:58','2020-09-24 06:07:58'),
	(23,'Peter Questions','peter-questions','# Laravel is the php\'s framework!',11,17,'2020-09-26 15:35:51','2020-09-26 15:35:51'),
	(24,'Test Question One','test-question-one','# Vue Markdown Editor\n\nHello Testing . . .',14,17,'2020-10-07 07:45:41','2020-10-07 07:45:41');

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `replies`;

CREATE TABLE `replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `replies_question_id_foreign` (`question_id`),
  CONSTRAINT `replies_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;

INSERT INTO `replies` (`id`, `body`, `question_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Necessitatibus repellat maiores natus dolores nemo. Eum voluptatem neque officiis ut soluta similique sapiente omnis. Temporibus reiciendis omnis ea sit.',6,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(2,'Ducimus possimus quia beatae veniam. Odio numquam repudiandae odio modi qui qui quia. Est ea modi cumque amet rerum sapiente. Mollitia et error inventore sunt distinctio accusamus.',4,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(3,'Voluptas sed qui cum repellat id. Recusandae placeat ut velit dolorem fugit ullam. Debitis est voluptatem sequi mollitia.',10,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(4,'Sint dolore reprehenderit sit omnis. Est quia impedit numquam assumenda. Sunt recusandae totam nulla nihil dicta. Fugiat ut vel quod modi.',10,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(6,'Voluptatem neque voluptas debitis ex minus dolore. Incidunt et aut eum error sequi nam est pariatur.',5,3,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(7,'Aut laudantium dolores ab in nostrum et expedita. Iure asperiores nihil quis eveniet doloremque facere non. Aut aut autem laboriosam eligendi qui eum voluptatem. Commodi quod atque adipisci.',1,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(9,'Repellat et quidem unde aut sit ut nam. Assumenda sint eaque fugit aut laborum.',10,5,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(10,'Aperiam quis eum qui impedit. Modi ut ea non soluta saepe libero. Eligendi animi quasi nihil provident. Excepturi ratione dolor occaecati reprehenderit rerum.',5,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(11,'Aut ad excepturi eum voluptatem deleniti voluptate. Nihil perferendis fuga provident fugiat. Labore cum quo quis. Laboriosam quo aperiam debitis et.',1,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(13,'Laborum dolor aut atque enim tenetur dolores dignissimos. Et asperiores aut quisquam fuga. Nisi cum aliquid iste. Recusandae vero quia rerum non totam.',3,5,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(14,'Est officia tenetur deleniti repellat dolorum laborum. Sit distinctio in corporis debitis.',10,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(15,'Natus laborum est maiores officiis magni doloremque. Alias omnis possimus amet nesciunt laborum aliquid. Dolore eum vitae non magni sit id temporibus. A sit et et aut voluptatem quidem est.',6,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(16,'Voluptas adipisci sed quo iusto est ipsa. Ratione tenetur asperiores aut delectus. Tempore enim necessitatibus quaerat sit ut reiciendis maxime facere. Et et omnis accusamus sit aperiam.',4,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(20,'Minus delectus voluptates eligendi blanditiis. Voluptatum qui provident sunt cupiditate fugiat distinctio. Atque minima amet harum ab aliquam.',10,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(21,'Ipsam iste enim doloribus autem. Ipsum autem nihil nam occaecati aut. Ut dolor et dicta qui ut sint sed. Eum aut quam et et iure ut voluptatem.',9,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(23,'Beatae inventore et dolorum vitae. Qui est aliquam suscipit. Minus et esse consequatur et. Iste sit ipsum qui excepturi excepturi laborum accusantium et.',10,3,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(24,'Voluptatem veritatis ea commodi aperiam nesciunt dolorem temporibus rem. Sit vel labore ea et earum. Cupiditate facilis sit facilis et dolores ut.',8,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(25,'Minima cum alias ipsa accusamus voluptatem sit. Officia ullam aut rerum ipsum optio repellat. Mollitia pariatur perferendis odio autem et saepe.',7,2,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(26,'Aliquam velit libero temporibus ut qui asperiores. Dolores deleniti facilis quia odit dolor sint. Earum et excepturi vel minima eaque velit.',1,7,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(27,'A rem aperiam est nesciunt natus fugit placeat quia. Dolore tempore nam provident. Corporis aut molestiae aliquid possimus. Dolores exercitationem quia ab illo debitis aut.',8,7,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(29,'Nihil omnis harum illum beatae voluptatum. Iusto quas sint blanditiis eveniet. Magnam mollitia voluptatum ipsa.',8,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(30,'This the first update reply!',6,8,'2020-09-19 13:07:39','2020-09-19 19:50:32'),
	(31,'Aut libero et tempora atque non voluptatem dolor. Vel error modi sed est omnis tempora. Fuga corrupti ut autem sed.',1,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(33,'Et autem itaque reprehenderit. Distinctio eos sapiente illo. Temporibus exercitationem modi quas dolor minus ut sint. Eos dolor qui voluptas culpa. Sit iste voluptatem voluptatem qui.',7,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(34,'Et iste non sunt aut. Quidem minima ut est quis ullam repellat. Ea quia qui qui nihil molestiae numquam.',4,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(35,'Porro mollitia eum sit ipsum ab. Dolor debitis maiores eos at inventore delectus et. Porro occaecati sit vero ea vel cupiditate. Quia repudiandae voluptates eveniet est doloribus asperiores.',1,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(36,'Quia consectetur exercitationem occaecati. Quas officia necessitatibus nemo praesentium voluptate officia.',8,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(38,'Quo iste aut autem id velit fugiat. Assumenda vitae ducimus quo officiis voluptas. Non tenetur mollitia et et voluptatem.',9,4,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(39,'Itaque id adipisci quis id in sed. Cumque nostrum veniam voluptatibus doloremque molestiae. Qui maiores laborum voluptatem et iure consectetur vel. Ut qui adipisci sapiente aut.',9,6,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(40,'Et ut asperiores velit fugit nobis. Facilis corrupti esse occaecati quae. Voluptatem fugit odio eligendi est omnis non occaecati provident.',4,9,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(41,'Neque et velit eum praesentium itaque harum et eum. Atque quos nam molestias et. Velit doloremque dolorem quo occaecati et.',1,1,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(42,'Adipisci maiores iure dolorem eligendi voluptatem pariatur ad. Consequatur ut inventore tempore rerum quaerat. Odio ut voluptas dicta ut provident aliquid cupiditate.',7,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(44,'Eveniet dolore sit minus minus officiis sit. Architecto eos laboriosam temporibus ut ad. Tenetur voluptatem illo esse. Dolores qui quasi velit qui dolorem.',7,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(45,'Dolorem ullam consequatur dicta nisi. Ut dolores inventore ab ad. Dolor ullam dolores et possimus et. Ullam assumenda dolor natus saepe consequuntur recusandae rerum.',6,10,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(46,'In iusto omnis ipsam deserunt accusamus voluptates vel dignissimos. Fugit vitae ut asperiores eveniet exercitationem sed sequi modi. Magnam ipsam ut unde minus quasi eos consequatur.',4,2,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(47,'Et minus perferendis ut corrupti consequatur voluptatem vitae. Quaerat nulla quod suscipit possimus doloribus laudantium aperiam.',6,5,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(48,'Molestias est occaecati ipsam veritatis numquam quia. Quia eaque quae esse officiis mollitia quia. Pariatur id nemo deleniti dicta qui.',7,2,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(50,'Odio pariatur velit velit fuga et et. Autem et rerum et quasi consequatur repellendus. Voluptas tempora earum expedita deserunt veniam laborum ipsum.',5,8,'2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(51,'This the first update reply!',6,1,'2020-09-19 18:51:18','2020-09-19 19:50:45'),
	(56,'The new reply for question.',8,17,'2020-09-25 16:54:19','2020-09-25 16:54:19'),
	(66,'# Hello World',5,15,'2020-09-25 19:20:28','2020-09-25 19:20:28'),
	(67,'# Hello World Update',3,15,'2020-09-25 20:30:30','2020-09-26 06:59:12'),
	(68,'another reply',3,15,'2020-09-26 07:00:18','2020-09-26 07:00:18'),
	(69,'# Hello World',14,17,'2020-09-26 09:54:47','2020-09-26 09:54:47'),
	(70,'# Hello World new reply',5,17,'2020-09-26 11:15:46','2020-09-26 11:15:46'),
	(71,'Notify Reply One',7,17,'2020-09-26 14:45:03','2020-09-26 14:45:03'),
	(72,'Notify Reply One',7,17,'2020-09-26 14:45:31','2020-09-26 14:45:31'),
	(73,'This is new reply',3,17,'2020-09-26 15:22:01','2020-09-26 15:22:01'),
	(75,'new reply on own question.',23,17,'2020-09-26 19:24:08','2020-09-26 19:24:08'),
	(78,'Hello noti test . . .',24,15,'2020-10-07 07:48:22','2020-10-07 07:48:22');

/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Prof. Darron Schultz IV','oshields@example.org','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7Z2hww5iNe','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(2,'Prof. Griffin Rice Sr.','orn.noemy@example.com','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','uwUocv2NJS','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(3,'Ressie Schuster','vilma.considine@example.net','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nlGK5UIyQN','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(4,'Macy Gusikowski','anahi17@example.org','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7KSl5ylxEK','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(5,'Dr. Guido Jenkins Jr.','emetz@example.com','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lepf33bNKY','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(6,'Emmanuelle Schowalter PhD','dbotsford@example.org','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dybTTHOsFy','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(7,'Adeline Kemmer','treva.shields@example.com','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xGWL09QIqR','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(8,'Blake Kerluke','eryn.wilderman@example.org','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8PL5b0gACn','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(9,'Clovis Moore','annamarie.wisozk@example.org','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zxX3or8DE6','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(10,'Dovie Bailey','bechtelar.aurore@example.net','2020-09-19 13:07:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TeprUhYAhU','2020-09-19 13:07:39','2020-09-19 13:07:39'),
	(11,'John Doe','johndoe@gmail.com',NULL,'$2y$10$fd0.iAGnFUZWEnM8JML2SuUM1jbxww4XLUPwKHqEHZ4XTCTRU.5he',NULL,'2020-09-20 03:41:06','2020-09-20 03:41:06'),
	(15,'Aung Aung','aung@gmail.com',NULL,'$2y$10$LOdmCCa1KnE6VkSH0f0Em.jZvCjfmX.Eeby.nxftNYdRoY27rvsjy',NULL,'2020-09-21 16:04:45','2020-09-21 16:04:45'),
	(17,'Peter','peter@gmail.com',NULL,'$2y$10$yP0syQJKz5APPoFvzU2ZM.EgIqa1.jsqRYwCwPIDqvn8pWO91S7si',NULL,'2020-09-21 16:19:30','2020-09-21 16:19:30');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
