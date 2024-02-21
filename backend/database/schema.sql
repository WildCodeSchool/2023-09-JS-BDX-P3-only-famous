
CREATE TABLE if not exists `playlist` (
  `playlistId` varchar(255) NOT NULL,
  `playlistTitle` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`playlistId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE if not exists `video` (
  `ytId` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `playlistId` varchar(255),
  `description` text,
  `thumbnails` varchar(255) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `publishDate` date NOT NULL,
  `tags` text,
  `isPublic` tinyint(1) DEFAULT 1,
  `isHidden` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ytId`),
  FOREIGN KEY (playlistId) REFERENCES playlist(playlistId)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


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
  `description` text DEFAULT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mahdi','mcheik','mahdi.mcheik@hotmail.fr','1986-04-21','$2b$04$H5hYVhHAo7tB6j1hog0uuORJqzukXIWMPMZD/VrGuwZR9H6FbFV12',1,1,'http://localhost:3310/uploads/1706279367614_map-of-the-world-2401458_1920.jpg','92b98e1d-e424-4dd9-90c4-fa9fe66f6fd1', 'Parlez-nous de vous, votre parcours...') ON DUPLICATE KEY UPDATE 
`id` = VALUES(`id`),
`firstname` = VALUES(`firstname`),
`lastname` = VALUES(`lastname`),
`email` = VALUES(`email`),
`birthday` = VALUES(`birthday`),
`password` = VALUES(`password`),
`isAdmin` = VALUES(`isAdmin`),
`isActive` = VALUES(`isActive`),
`imgUrl` = VALUES(`imgUrl`),
`activationCode` = VALUES(`activationCode`),
`description` = VALUES(`description`)
;

# jointure Favoris

CREATE TABLE if not exists `favorite` (
  `id` int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `email` VARCHAR(255) NOT NULL,
  `playlistId` VARCHAR(255) not NULL,
  FOREIGN KEY (email) REFERENCES user(email),
  FOREIGN KEY (playlistId) REFERENCES playlist(playlistId)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


 # CONSTRAINT unique_playlist_user UNIQUE (playlistId, email)