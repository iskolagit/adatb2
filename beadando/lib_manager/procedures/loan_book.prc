CREATE OR REPLACE PROCEDURE loan_book(p_book_id IN INTEGER, p_member_id IN INTEGER) is
BEGIN
  UPDATE books SET quantity = quantity - 1 WHERE book_id = p_book_id;

  INSERT INTO book_loans
    (book_id, member_id)
  VALUES
    (p_book_id, p_member_id);
END;
/
