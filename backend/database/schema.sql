
CREATE TABLE if not exists `playlist` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `playlistId` varchar(255) NOT NULL,
  `playlistTitle` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE if not exists `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  `isActive` tinyint(1) DEFAULT '0',
  `imgUrl` varchar(255) DEFAULT NULL,
  `activationCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mahdi','mcheik','mahdi.mcheik@hotmail.fr','1986-04-21','$2b$04$H5hYVhHAo7tB6j1hog0uuORJqzukXIWMPMZD/VrGuwZR9H6FbFV12',1,1,'http://localhost:3310/uploads/1706279367614_map-of-the-world-2401458_1920.jpg','92b98e1d-e424-4dd9-90c4-fa9fe66f6fd1') ON DUPLICATE KEY UPDATE 
`id` = VALUES(`id`),
`firstname` = VALUES(`firstname`),
`lastname` = VALUES(`lastname`),
`email` = VALUES(`email`),
`birthday` = VALUES(`birthday`),
`password` = VALUES(`password`),
`isAdmin` = VALUES(`isAdmin`),
`isActive` = VALUES(`isActive`),
`imgUrl` = VALUES(`imgUrl`),
`activationCode` = VALUES(`activationCode`)
;

CREATE TABLE if not exists `video` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ytId` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `playlistTitle` varchar(255) NOT NULL,
  `playlistId` varchar(255) NOT NULL,
  `description` text,
  `thumbnails` varchar(255) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `publishDate` date NOT NULL,
  `tags` text,
  `isPublic` tinyint(1) DEFAULT 1,
  `isHidden` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
