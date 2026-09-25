CREATE TABLE fines (
    fineid BIGSERIAL PRIMARY KEY,
    loanid BIGINT NOT NULL,
    amount NUMERIC(10,2) NOT NULL,
    issued_date DATE NOT NULL DEFAULT CURRENT_DATE,
    paid BOOLEAN NOT NULL DEFAULT FALSE,

    CONSTRAINT fk_fines_loan
        FOREIGN KEY (loanid)
        REFERENCES loans(loanid),

    CONSTRAINT chk_fine_amount
        CHECK (amount >= 0)
);