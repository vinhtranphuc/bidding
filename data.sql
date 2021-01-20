-- Dumping structure for table life_stories.tb_roles
CREATE TABLE IF NOT EXISTS `tb_roles` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `UK_3mgeodec2ykm307478v8u0352` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table life_stories.tb_roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_roles` DISABLE KEYS */;
INSERT INTO `tb_roles` (`role_id`, `name`) VALUES
	(2, 'ROLE_ADMIN'),
	(1, 'ROLE_SUPPER_ADMIN'),
	(3, 'ROLE_USER');
/*!40000 ALTER TABLE `tb_roles` ENABLE KEYS */;

-- Dumping structure for table life_stories.tb_users
CREATE TABLE IF NOT EXISTS `tb_users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_img` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK8n82lwp7lflhwda2v2v3wckc9` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table life_stories.tb_users: ~5 rows (approximately)
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`user_id`, `created_at`, `updated_at`, `address`, `avatar_img`, `city`, `company_name`, `country`, `email`, `enabled`, `full_name`, `join_date`, `note`, `occupation`, `password`, `phone`, `provider`, `provider_id`, `social_avatar_url`, `summary`, `type`, `username`) VALUES
	(1, '2020-12-04 15:14:06', '2020-12-04 15:14:07', 'Duy Xuyên, Quảng Nam', '/store/upload/user/tranphucvinh/avatar/2020121415434730130236_autumn-daylight-fall-fog-589841-copy.jpg', NULL, 'Softone', 'Viet Nam', 'vinhtranphuc@gmail.com', b'1', 'Trần Phúc Vinh', '2020-12-04 15:14:45', NULL, NULL, '$2a$10$A7F8CntAh5lojQCnWil6wOEIF4SRDxVcamp.aMB5uR.a0icZ/BtYa', '0382607172', 'local', NULL, NULL, 'FFFFFFSadasdas\ndsadasdsadas', NULL, 'tranphucvinh'),
	(4, '2020-12-21 09:46:47', '2020-12-21 09:46:47', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 'testadmin', '2020-12-21 09:46:47', NULL, NULL, '$2a$10$Fr0bEf46RU676YJ9BkuyvO3c.Qc92YL2sKsJN47hJHzxC4BlwfdwC', NULL, 'local', NULL, NULL, NULL, NULL, 'testadmin'),
	(5, '2020-12-21 13:30:20', '2020-12-21 13:30:20', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 'Tran Phuc Vinh', '2020-12-21 13:30:20', NULL, NULL, '$2a$10$ZAKR/SywdOwAwfcBaL8ax.7KS7Qj3II4Tlq67P3SMZq46IhGSBN2G', NULL, 'local', NULL, NULL, NULL, NULL, 'testuser'),
	(6, '2020-12-21 14:09:33', '2020-12-21 14:09:33', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 'Test User', '2020-12-21 14:09:33', NULL, NULL, '$2a$10$TvIhsaJEJ2ryWwgKbB/x7ea1DiZOgiBHGtksR5M6cuMSL9g1bCLEe', NULL, 'local', NULL, NULL, NULL, NULL, 'testuser1'),
	(7, '2020-12-21 14:12:26', '2020-12-21 14:12:26', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 'Test User 2', '2020-12-21 14:12:26', NULL, NULL, '$2a$10$4NXGNIts4e/mPx0nbMWC2OHmIy4w5F2LtKrvymBb9AGqWxGo1f2y2', NULL, 'local', NULL, NULL, NULL, NULL, 'testuser2');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

-- Dumping structure for table life_stories.tb_user_roles
CREATE TABLE IF NOT EXISTS `tb_user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK3mxrxqo67aefq0yaufnn84v3e` (`role_id`),
  CONSTRAINT `FK3mxrxqo67aefq0yaufnn84v3e` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`),
  CONSTRAINT `FKugolgxur3og4u4y8od79ubp6` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table life_stories.tb_user_roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `tb_user_roles` DISABLE KEYS */;
INSERT INTO `tb_user_roles` (`user_id`, `role_id`) VALUES
	(1, 1),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2);
/*!40000 ALTER TABLE `tb_user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
