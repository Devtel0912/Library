CREATE TABLE Books (
    bookid int primary key,
    title varchar(500) not null,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    publication_year INTEGER,
    authorid BIGINT NOT NULL,
    categoryid BIGINT NOT NULL,


     CONSTRAINT fk_books_author
        FOREIGN KEY (authorid)
        REFERENCES authors(authorid),

    CONSTRAINT fk_books_category
        FOREIGN KEY (categoryid)
        REFERENCES categories(categoryid)
);