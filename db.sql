-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.22-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for loja
CREATE DATABASE IF NOT EXISTS `loja` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `loja`;

-- Dumping structure for table loja.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classelink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.categoria: ~14 rows (approximately)
DELETE FROM `categoria`;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`id`, `nome`, `foto`, `classe`, `classelink`, `created_at`, `updated_at`) VALUES
	(1, 'Livros e Musica', 'fa fa-book', 'col-md-3', 'wthree-btn wthree3', '2018-05-16 07:48:12', '2018-05-16 07:48:12'),
	(2, 'Celulares', 'fa fa-mobile', 'col-md-3', 'wthree-btn', '2018-05-16 07:48:24', '2018-05-16 07:48:24'),
	(3, 'Electrónicos', 'fa fa-laptop', 'col-md-3', 'wthree-btn wthree1', '2018-05-16 07:48:40', '2018-05-16 07:48:40'),
	(4, 'Mobílias', 'fa fa-wheelchair', 'col-md-3', 'wthree-btn wthree2', '2018-05-16 07:48:56', '2018-05-16 07:48:56'),
	(5, 'Decoração', 'fa fa-home', 'col-md-2', 'wthree-btn wthree2', '2018-05-16 07:49:03', '2018-05-16 07:49:03'),
	(6, 'Moda', 'fa fa-asterisk', 'col-md-2', 'wthree-btn wthree4', '2018-05-16 09:06:03', '2018-05-16 09:06:03'),
	(7, 'Crianças', 'fa fa-gamepad', 'col-md-2', 'wthree-btn wthree2', '2018-05-16 09:06:40', '2018-05-16 09:06:40'),
	(8, 'Mantimentos', 'fa fa-shopping-basket', 'col-md-2 ', 'wthree-btn wthree', '2018-05-16 09:07:30', '2018-05-16 09:07:30'),
	(9, 'Saúde', 'fa fa-medkit', 'col-md-2', 'wthree-btn wthree5', '2018-05-16 09:08:02', '2018-05-16 09:08:03'),
	(10, 'Comida', 'fa fa-cutlery', 'col-md-2', 'wthree-btn wthree3', '2018-05-16 09:08:58', '2018-05-16 09:08:58'),
	(11, 'Desporto', 'fa fa-futbol-o', 'col-md-3', 'wthree-btn wthree2', '2018-05-16 09:09:25', '2018-05-16 09:09:26'),
	(12, 'Jogos e Bonecos', 'fa fa-futbol-o', 'col-md-3', 'wthree-btn wthree5', '2018-05-16 09:10:12', '2018-05-16 09:10:12'),
	(13, 'Gifts', 'fa fa-gift', 'col-md-3', 'wthree-btn ', '2018-05-16 09:11:20', '2018-05-16 09:11:20'),
	(14, 'Automatos', 'fa fa-car', 'col-md-3', 'wthree-btn wthree5', '2018-05-16 09:13:58', '2018-05-16 09:13:58');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Dumping structure for table loja.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.migrations: ~7 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_05_15_200216_create_categoria_table', 2),
	(4, '2018_05_15_200257_create_produto_table', 2),
	(5, '2018_05_16_102032_create_reserva_table', 3),
	(6, '2018_05_28_124449_create_roles_table', 4),
	(7, '2018_05_28_125104_create_permissions_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table loja.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table loja.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.permissions: ~8 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'view_produto', 'vp', '1', '2018-05-28 15:17:05', '2018-05-28 15:17:05'),
	(2, 'create_produto', 'cp', '1', '2018-05-28 15:17:27', '2018-05-28 15:17:27'),
	(3, 'update_produto', 'up', '1', '2018-05-28 15:17:51', '2018-05-28 15:17:51'),
	(4, 'delete_produto', 'dp', '1', '2018-05-28 15:18:11', '2018-05-28 15:18:11'),
	(5, 'view_reserva', 'vr', '1', '2018-05-28 15:18:32', '2018-05-28 15:18:32'),
	(6, 'create_reserva', 'cr', '1', '2018-05-28 15:18:46', '2018-05-28 15:18:46'),
	(7, 'update_reserva', 'ur', '1', '2018-05-28 15:19:06', '2018-05-28 15:19:07'),
	(8, 'delete_reserva', 'dr', '1', '2018-05-28 15:19:19', '2018-05-28 15:19:20');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table loja.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.permission_role: ~3 rows (approximately)
DELETE FROM `permission_role`;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 5, 2, '2018-05-28 15:20:19', '2018-05-28 15:20:20'),
	(2, 1, 2, '2018-05-28 15:20:37', '2018-05-28 15:20:37'),
	(3, 8, 1, '2018-05-28 15:20:54', '2018-05-28 15:20:54');
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table loja.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `categoria_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `produto_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.produto: ~4 rows (approximately)
DELETE FROM `produto`;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`id`, `nome`, `foto`, `preco`, `categoria_id`, `created_at`, `updated_at`) VALUES
	(1, 'Camera Digital', 'e4.png', 70.00, 2, '2018-05-16 10:49:52', '2018-05-16 10:49:53'),
	(2, 'Smart Phone', 'e3.png', 3500.00, 2, '2018-05-16 11:45:18', '2018-05-16 11:45:19'),
	(3, 'Audio Speaker', 'e1.png', 11500.00, 2, '2018-05-16 11:46:21', '2018-05-16 11:46:21'),
	(4, 'Refigerador', 'e2.png', 7500.00, 2, '2018-05-16 11:46:44', '2018-05-16 11:46:44'),
	(5, 'Cacana', 'e4.png', 200.00, 8, '2018-06-20 14:40:10', '2018-06-20 14:40:10'),
	(6, 'Cacana', 'e4.png', 200.00, 8, '2018-06-20 14:40:49', '2018-06-20 14:40:49'),
	(7, 'Mathapa', 'e3.png', 300.00, 8, '2018-06-20 14:42:10', '2018-06-20 14:42:10'),
	(8, 'Mathapa', 'e3.png', 300.00, 8, '2018-06-20 14:42:36', '2018-06-20 14:42:36');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Dumping structure for table loja.reserva
CREATE TABLE IF NOT EXISTS `reserva` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `produto_id` int(10) unsigned NOT NULL,
  `nomeproduto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  `preco` float unsigned NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reserva_user_id_foreign` (`user_id`),
  KEY `reserva_produto_id_foreign` (`produto_id`),
  CONSTRAINT `reserva_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `reserva_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.reserva: ~2 rows (approximately)
DELETE FROM `reserva`;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` (`id`, `user_id`, `produto_id`, `nomeproduto`, `quantidade`, `preco`, `estado`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, 'Audio Speaker', 2, 11500, 'N', '2018-05-28 12:37:58', '2018-05-28 12:38:10'),
	(2, 1, 2, 'Smart Phone', 1, 3500, 'N', '2018-05-28 12:38:57', '2018-05-28 12:38:57');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;

-- Dumping structure for table loja.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.roles: ~3 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `label`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Administrador', 'ADM', '1', '2018-05-28 14:59:33', '2018-05-28 14:59:34'),
	(2, 'Cliente', 'CLT', '1', '2018-05-28 14:59:52', '2018-05-28 14:59:53'),
	(3, 'Visitante', 'VST', '1', '2018-05-28 16:26:25', '2018-05-28 16:26:25'),
	(4, 'Edson', 'Pas', '1', '2018-06-20 14:16:01', '2018-06-20 14:16:01'),
	(5, 'Recepcionista', 'RCP', '1', '2018-06-20 14:17:51', '2018-06-20 14:17:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table loja.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.role_user: ~0 rows (approximately)
DELETE FROM `role_user`;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2018-05-28 15:46:53', '2018-05-28 15:46:54');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table loja.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loja.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Edgar Gudo', 'edgar@gmail.com', '$2y$10$HlZ2nPlkO/sQhcUIgjVanebbBhtxs0dugIRhEDnSzaQ70Kh1v3wUi', '9DCJctOjGCp7BHXUxYwIiiJtPsrqIABea3JXl24TnoihgDqUMuRjGOJgGrou', '2018-05-16 09:59:39', '2018-05-16 09:59:39'),
	(2, 'Cladia Ivete', 'civete@gmail.com', '$2y$10$gKKbykSA7RWdt1P0pfLuIu3Fozs7sP1xRXXIm83Ts0gTtx8xMmEg.', 'wL3wdeUKtwEDTl6n7HxpChLo3P0fxJeqqtmF76Xn7fa9U4jFCUijIpT0JZaI', '2018-05-28 13:54:04', '2018-05-28 13:54:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
