CREATE TABLE Authors (
    authorid int primary key,
    f_name varchar(50) not null,
    l_name varchar(50) not null,
    email varchar(50) not null,
    date_of_birth date not null
);