CREATE TABLE Loans (
    loanid int primary key,
    memberid BIGINT not null,
    copyid BIGINT NOT NULL,
    checkout_date DATE NOT NULL DEFAULT CURRENT_DATE,
    due_date DATE NOT NULL,
    return_date DATE,


    CONSTRAINT fk_loans_member
        FOREIGN KEY (memberid)
        REFERENCES members(memberid),

    CONSTRAINT fk_loans_copy
        FOREIGN KEY (copyid)
        REFERENCES book_copies(copyid),

    CONSTRAINT chk_loan_dates
        CHECK (due_date >= checkout_date),

    CONSTRAINT chk_return_date
        CHECK (return_date IS NULL OR return_date >= checkout_date)



);