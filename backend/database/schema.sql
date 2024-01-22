create table user (
    id int unsigned primary key auto_increment not null, firstname varchar(255) not null, lastname VARCHAR(255) not null, email varchar(255) not null UNIQUE, birthday VARCHAR(255) not null, password VARCHAR(255) not null, isAdmin BOOLEAN DEFAULT false, isActive BOOLEAN DEFAULT false, imgUrl varchar(255) null, activationCode VARCHAR(255) null
);