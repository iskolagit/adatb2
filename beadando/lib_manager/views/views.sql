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
