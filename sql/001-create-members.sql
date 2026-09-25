CREATE table Members (
    memberid int primary key,
    f_name varchar(50) not null,
    l_name varchar(50) not null,
    email varchar(50) not null,
    phone_num varchar(25) not null,
    date_joined DATE NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE
);