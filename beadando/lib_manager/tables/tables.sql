--Tables
CREATE TABLE books (
  book_id NUMBER PRIMARY KEY,
  title VARCHAR2(250 CHAR) NOT NULL,
  author VARCHAR2(250 CHAR) NOT NULL,
  genre VARCHAR2(250 CHAR) NOT NULL,
  publication_date DATE NOT NULL,
  quantity INTEGER NOT NULL
)
TABLESPACE users;

CREATE TABLE members (
  member_id NUMBER PRIMARY KEY,
  member_name VARCHAR2(250 CHAR) NOT NULL,
  address VARCHAR2(250 CHAR) NOT NULL,
  phone_number VARCHAR2(250 CHAR) NOT NULL,
  membership_type VARCHAR2(250 CHAR) NOT NULL,
  membership_start_date DATE NOT NULL,
  membership_end_date DATE NOT NULL
)
TABLESPACE users;

CREATE TABLE book_loans (
  loan_id NUMBER PRIMARY KEY,
  book_id INTEGER NOT NULL,
  member_id INTEGER NOT NULL,
  loan_date DATE NOT NULL,
  due_date DATE NOT NULL,
  returned_date DATE,
)
TABLESPACE users;

CREATE TABLE fines (
  fine_id NUMBER PRIMARY KEY,
  loan_id INTEGER NOT NULL,
  amount DECIMAL NOT NULL,
  paid BOOLEAN NOT NULL DEFAULT 0,
)
TABLESPACE users;

--Foreign keys
ALTER TABLE book_loans ADD CONSTRAINT fk_book_loans_books
      FOREIGN KEY(book_id) REFERENCES book(book_id);

ALTER TABLE book_loans ADD CONSTRAINT fk_book_loans_members
      FOREIGN KEY(member_id) REFERENCES book(member_id);

ALTER TABLE fines ADD CONSTRAINT fk_fines_book_loans
      FOREIGN KEY(loan_id) REFERENCES book_loans(loan_id);

--Table comments
COMMENT ON TABLE books IS 'Konyvek';
COMMENT ON TABLE members IS 'Kolcsonzo szemelyek';
COMMENT ON TABLE book_loans IS 'Kolcsonzesek';
COMMENT ON TABLE fines IS 'Kolcsonzesi birsagok';

--Inserts


--Backup tables
CREATE TABLE books_bck AS SELECT * FROM books;
CREATE TABLE members_bck AS SELECT * FROM members;
CREATE TABLE book_loans_bck AS SELECT * FROM book_loans;
CREATE TABLE fines_bck AS SELECT * FROM fines;