-- ============================================
-- Members
-- ============================================

INSERT INTO members
(memberid, f_name, l_name, email, phone_num, date_joined, active)
VALUES
(1, 'John', 'Smith', 'john.smith@email.com', '404-555-0101', CURRENT_DATE, TRUE),
(2, 'Sarah', 'Johnson', 'sarah.johnson@email.com', '404-555-0102', CURRENT_DATE, TRUE),
(3, 'Michael', 'Williams', 'michael.williams@email.com', '404-555-0103', CURRENT_DATE, TRUE),
(4, 'Emily', 'Brown', 'emily.brown@email.com', '404-555-0104', CURRENT_DATE, TRUE),
(5, 'David', 'Jones', 'david.jones@email.com', '404-555-0105', CURRENT_DATE, TRUE),
(6, 'Jessica', 'Davis', 'jessica.davis@email.com', '404-555-0106', CURRENT_DATE, TRUE),
(7, 'Daniel', 'Miller', 'daniel.miller@email.com', '404-555-0107', CURRENT_DATE, TRUE),
(8, 'Ashley', 'Wilson', 'ashley.wilson@email.com', '404-555-0108', CURRENT_DATE, TRUE),
(9, 'Christopher', 'Moore', 'christopher.moore@email.com', '404-555-0109', CURRENT_DATE, TRUE),
(10, 'Amanda', 'Taylor', 'amanda.taylor@email.com', '404-555-0110', CURRENT_DATE, TRUE);


-- ============================================
-- Authors
-- ============================================
INSERT INTO authors
(authorid, f_name, l_name, email, date_of_birth)
VALUES
(1, 'George', 'Orwell', 'george.orwell@example.com', '1903-06-25'),
(2, 'Jane', 'Austen', 'jane.austen@example.com', '1775-12-16'),
(3, 'J.R.R.', 'Tolkien', 'jrr.tolkien@example.com', '1892-01-03'),
(4, 'Agatha', 'Christie', 'agatha.christie@example.com', '1890-09-15'),
(5, 'Stephen', 'King', 'stephen.king@example.com', '1947-09-21');


-- ============================================
-- Categories
-- ============================================

INSERT INTO categories
(categoryid, category_name, description)
VALUES
(1, 'Fiction', 'Novels and fictional literature'),
(2, 'Mystery', 'Mystery and detective novels'),
(3, 'Fantasy', 'Fantasy and speculative fiction'),
(4, 'Science Fiction', 'Science fiction literature'),
(5, 'Horror', 'Horror and supernatural fiction');


-- ============================================
-- Books
-- ============================================

INSERT INTO books
(bookid, title, isbn, publication_year, authorid, categoryid)
VALUES
(1, '1984', '9780451524935', 1949, 1, 1),
(2, 'Animal Farm', '9780451526342', 1945, 1, 1),
(3, 'Pride and Prejudice', '9780141439518', 1813, 2, 1),
(4, 'The Hobbit', '9780547928227', 1937, 3, 3),
(5, 'The Lord of the Rings', '9780544003415', 1954, 3, 3),
(6, 'Murder on the Orient Express', '9780062693662', 1934, 4, 2),
(7, 'And Then There Were None', '9780062073488', 1939, 4, 2),
(8, 'The Shining', '9780307743657', 1977, 5, 5),
(9, 'It', '9781501142970', 1986, 5, 5),
(10, 'The Stand', '9780307743688', 1978, 5, 5);


-- ============================================
-- Book Copies
-- ============================================

INSERT INTO book_copies
(copyid, bookid, barcode, status)
VALUES
(1, 1, 'LIB-1984-001', 'AVAILABLE'),
(2, 1, 'LIB-1984-002', 'CHECKED_OUT'),
(3, 2, 'LIB-ANIMAL-001', 'AVAILABLE'),
(4, 2, 'LIB-ANIMAL-002', 'AVAILABLE'),
(5, 3, 'LIB-PRIDE-001', 'CHECKED_OUT'),
(6, 4, 'LIB-HOBBIT-001', 'AVAILABLE'),
(7, 4, 'LIB-HOBBIT-002', 'CHECKED_OUT'),
(8, 5, 'LIB-LOTR-001', 'AVAILABLE'),
(9, 5, 'LIB-LOTR-002', 'AVAILABLE'),
(10, 6, 'LIB-ORIENT-001', 'CHECKED_OUT'),
(11, 7, 'LIB-NONE-001', 'AVAILABLE'),
(12, 8, 'LIB-SHINING-001', 'CHECKED_OUT'),
(13, 9, 'LIB-IT-001', 'AVAILABLE'),
(14, 9, 'LIB-IT-002', 'DAMAGED'),
(15, 10, 'LIB-STAND-001', 'AVAILABLE');


-- ============================================
-- Loans
-- ============================================

INSERT INTO loans
(loanid, memberid, copyid, checkout_date, due_date, return_date)
VALUES
(1, 1, 2, '2026-09-20', '2026-10-04', NULL),
(2, 2, 5, '2026-09-18', '2026-10-02', NULL),
(3, 3, 7, '2026-09-21', '2026-10-05', NULL),
(4, 4, 10, '2026-09-01', '2026-09-15', NULL),
(5, 5, 12, '2026-09-22', '2026-10-06', NULL),
(6, 6, 3, '2026-08-20', '2026-09-03', '2026-08-30');


-- ============================================
-- Reservations
-- ============================================
INSERT INTO reservations
(reservationid, memberid, bookid, reservation_date, status)
VALUES
(1, 7, 1, '2026-09-20', 'ACTIVE'),
(2, 8, 5, '2026-09-18', 'ACTIVE'),
(3, 9, 8, '2026-09-10', 'FULFILLED'),
(4, 10, 6, '2026-09-15', 'CANCELLED');


-- ============================================
-- Fines
-- ============================================

INSERT INTO fines
(loanid, amount, paid)
VALUES
(4, 15.00, FALSE),
(6, 10.00, TRUE);