CREATE TABLE book_copies (
    copyid BIGSERIAL PRIMARY KEY,
    bookid BIGINT NOT NULL,
    barcode VARCHAR(50) NOT NULL UNIQUE,
    status VARCHAR(30) NOT NULL DEFAULT 'AVAILABLE',
    acquisition_date DATE DEFAULT CURRENT_DATE,

    CONSTRAINT fk_copies_book
        FOREIGN KEY (bookid)
        REFERENCES books(bookid),

    CONSTRAINT chk_copy_status
        CHECK (status IN ('AVAILABLE', 'CHECKED_OUT', 'LOST', 'DAMAGED'))
);