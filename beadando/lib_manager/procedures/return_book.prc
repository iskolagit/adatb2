CREATE OR REPLACE PROCEDURE return_book(p_loan_id       IN INTEGER,
                                        p_returned_date IN OUT DATE) is
BEGIN
  UPDATE book_loans
     SET returned_date = p_returned_date
   WHERE loan_id = loan_id;
END;
/
