create table user (
  id int unsigned primary key auto_increment not null,
  username varchar(255) not null,
  firstname varchar(255) not null,
  lastname varchar(255) not null,
  birthday DATE NOT NULL,
  isAdming TINYINT(1) DEFAULT 0
);
