
CREATE TABLE `Comment` (
	`id` int NOT NULL AUTO_INCREMENT,
	`content` varchar(191) NOT NULL,
	`postId` int NOT NULL,
	`userId` int NOT NULL,
	`createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
	PRIMARY KEY (`id`)
) ENGINE InnoDB,
  CHARSET utf8mb4,
  COLLATE utf8mb4_unicode_ci;

CREATE TABLE `Post` (
	`id` int NOT NULL AUTO_INCREMENT,
	`content` varchar(191) NOT NULL,
	`imageUrl` varchar(191),
	`userId` int NOT NULL,
	`createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
	PRIMARY KEY (`id`)
) ENGINE InnoDB,
  CHARSET utf8mb4,
  COLLATE utf8mb4_unicode_ci;

CREATE TABLE `User` (
	`id` int NOT NULL AUTO_INCREMENT,
	`email` varchar(191) NOT NULL,
	`password` varchar(191) NOT NULL,
	`role` enum('admin', 'user') NOT NULL DEFAULT 'user',
	PRIMARY KEY (`id`),
	UNIQUE KEY `User_email_key` (`email`)
) ENGINE InnoDB,
  CHARSET utf8mb4,
  COLLATE utf8mb4_unicode_ci;