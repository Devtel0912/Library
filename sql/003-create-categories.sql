CREATE TABLE Categories (
    categoryid BIGSERIAL primary key,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(500)
);