CREATE OR REPLACE PROCEDURE check_current_fines(p_member_id IN INTEGER,
                                                p_res       OUT INTEGER) is
BEGIN
  SELECT SUM(amount) as total_fines
    INTO p_res
    FROM fines
    JOIN book_loans
      ON fines.loan_id = book_loans.loan_id
   WHERE book_loans.member_id = p_member_id
     AND fines.paid = 0;
END check_current_fines;
/
