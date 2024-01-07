create table
    user(
        id int unsigned primary key auto_increment not null,
        firstname varchar(255) not null,
        lastname VARCHAR(255) not null,
        email varchar(255) not null UNIQUE,
        birthday VARCHAR(255) not null,
        password VARCHAR(255) not null,
        isAdmin BOOLEAN DEFAULT false,
        imgUrl varchar(255) null,
        secretQuestion text null,
        secretQuestion text null,
    );

insert INTO
    user (
        firstname,
        lastname,
        email,
        password,
        birthday,
        isAdmin
    )
VALUES (
        "Mahdi",
        "Mcheik",
        "mahdi.mcheik@hotmail.fr",
        "1234",
        "21-04-1986",
        true
    ), (
        "Ali",
        "Mcheik",
        "mahdi.mcheik@hotmail.com",
        "1234",
        "21-04-1986",
        false
    );