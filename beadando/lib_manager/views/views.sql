CREATE or replace VIEW vw_most_popular_books AS
SELECT books.*, COUNT(book_id) as loan_count
FROM books
INNER JOIN book_loans ON books.book_id = book_loans.book_id
GROUP BY books.book_id
ORDER BY loan_count DESC;

CREATE or replace VIEW vw_most_active_members AS
SELECT members.*, COUNT(member_id) as loan_count
FROM members
INNER JOIN book_loans ON members.member_id = book_loans.member_id
GROUP BY members.member_id
ORDER BY loan_count DESC;

CREATE or replace VIEW vw_current_loans AS
SELECT book_loans.*, books.title, members.name
FROM book_loans
INNER JOIN books ON book_loans.book_id = books.book_id
INNER JOIN members ON book_loans.member_id = members.member_id
WHERE returned_date IS NULL;

CREATE or replace VIEW vw_overdue_loans AS
SELECT book_loans.*, books.title, members.name
FROM book_loans
INNER JOIN books ON book_loans.book_id = books.book_id
INNER JOIN members ON book_loans.member_id = members.member_id
WHERE due_date < SYSDATE AND returned_date IS NULL;

CREATE VIEW vw_fines_by_member AS
SELECT members.name, SUM(fines.amount) as total_fines
FROM fines
JOIN book_loans ON fines.loan_id = book_loans.loan_id
JOIN members ON book_loans.member_id = members.member_id
GROUP BY members.name;

CREATE VIEW vw_fines_by_membership_type AS
SELECT members.membership_type, SUM(fines.amount) as total_fines
FROM fines
JOIN book_loans ON fines.loan_id = book_loans.loan_id
JOIN members ON book_loans.member_id = members.member_id
GROUP BY members.membership_type;

CREATE VIEW vw_overdue_books_by_member AS
SELECT members.name, COUNT(book_loans.book_id) as total_overdue
FROM book_loans
JOIN members ON book_loans.member_id = members.member_id
WHERE book_loans.due_date < CURRENT_DATE AND book_loans.returned_date IS NULL
GROUP BY members.name;

CREATE VIEW vw_books_on_loan_by_genre AS
SELECT books.genre, COUNT(book_loans.book_id) as total_books
FROM book_loans
JOIN books ON book_loans.book_id = books.book_id
WHERE book_loans.returned_date IS NULL
GROUP BY books.genre;

