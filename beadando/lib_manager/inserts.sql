--Inserts for book table
INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', to_date(1951, 'yyyy'), 35);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', to_date(1954, 'yyyy'), 45);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', to_date(1937, 'yyyy'), 55);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Harry Potter and the Philosophers Stone', 'J.K. Rowling', 'Fantasy', to_date(1997, 'yyyy'), 45);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'Fantasy', to_date(1998, 'yyyy'), 55);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 'Fantasy', to_date(1999, 'yyyy'), 35);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Harry Potter and the Goblet of Fire', 'J.K. Rowling', 'Fantasy', to_date(2000, 'yyyy'), 45);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Harry Potter and the Order of Phoenix', 'J.K. Rowling', 'Fantasy', to_date(2003, 'yyyy'), 55);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 'Fantasy', to_date(2005, 'yyyy'), 35);

INSERT INTO books (title, author, genre, publication_year, quantity)
VALUES ('The Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'Fantasy', to_date(2007, 'yyyy'), 45);

--Inserts for members table
INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (1, 'John Smith', '1234 Elm St', '555-555-5555', 'Standard', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (2, 'Jane Doe', '5678 Oak St', '555-555-5556', 'Premium', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (3, 'Bob Johnson', '9012 Pine St', '555-555-5557', 'Standard', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (4, 'Samantha Williams', '3456 Maple St', '555-555-5558', 'Premium', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (5, 'Michael Brown', '7890 Cedar St', '555-555-5559', 'Standard', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (6, 'Ashley Davis', '2468 Birch St', '555-555-5560', 'Premium', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (7, 'Jessica Garcia', '8012 Hemlock St', '555-555-5561', 'Standard', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (8, 'David Martinez', '1634 Willow St', '555-555-5562', 'Premium', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (9, 'Daniel Rodriguez', '6478 Redwood St', '555-555-5563', 'Standard', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));

INSERT INTO members (member_id, name, address, phone_number, membership_type, membership_start_date, membership_end_date)
VALUES (10, 'Melissa Thompson', '3210 Cherry St', '555-555-5564', 'Premium', to_date('2022-01-01', 'yyyy-mm-dd'), to_date('2022-12-31', 'yyyy-mm-dd'));


