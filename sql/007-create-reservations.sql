CREATE TABLE reservations (
    reservaionsid int primary key,
    memberid int not null,
    bookid int not null,
    reservation_date DATE NOT NULL DEFAULT CURRENT_DATE,
    status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',

    CONSTRAINT fk_reservations_member
        FOREIGN KEY (memberid)
        REFERENCES members(memberid),

    CONSTRAINT fk_reservations_book
        FOREIGN KEY (bookid)
        REFERENCES books(bookid),

    CONSTRAINT chk_reservation_status
        CHECK (status IN ('ACTIVE', 'FULFILLED', 'CANCELLED'))
);