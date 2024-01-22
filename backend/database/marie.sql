CREATE TABLE
    utilisateur (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        firstname VARCHAR(255) NOT NULL,
        lastname VARCHAR(255) NOT NULL
    );

CREATE TABLE
    experience (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        title VARCHAR(255) NOT NULL,
        description TEXT NULL
    );

CREATE TABLE
    formation (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        title VARCHAR(255) NOT NULL,
        description TEXT NULL
    );

CREATE TABLE
    cv (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        id_experience INT UNSIGNED,
        id_utilisateur INT UNSIGNED,
        id_formation INT UNSIGNED,
        FOREIGN KEY (id_experience) REFERENCES experience(id),
        FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id),
        FOREIGN KEY (id_formation) REFERENCES formation(id)
    );