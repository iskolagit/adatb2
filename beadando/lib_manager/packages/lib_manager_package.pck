create or replace package lib_manager_package is

  PROCEDURE add_new_member(p_name            in VARCHAR2,
                           p_address         IN VARCHAR2,
                           p_phone_number    IN VARCHAR2,
                           p_membership_type IN VARCHAR2);
  PROCEDURE return_book(p_loan_id IN INTEGER, p_returned_date IN OUT DATE);
  PROCEDURE loan_book(p_book_id IN INTEGER, p_member_id IN INTEGER);
  PROCEDURE check_current_fines(p_member_id IN INTEGER, p_res OUT INTEGER);

end lib_manager_package;
/
create or replace package body lib_manager_package is

  PROCEDURE add_new_member(p_name            in VARCHAR2,
                           p_address         IN VARCHAR2,
                           p_phone_number    IN VARCHAR2,
                           p_membership_type IN VARCHAR2) is
  BEGIN
    INSERT INTO members
      (member_name, address, phone_number, membership_type)
    VALUES
      (p_name, p_address, p_phone_number, p_membership_type);
  END;

  PROCEDURE check_current_fines(p_member_id IN INTEGER, p_res OUT INTEGER) is
  BEGIN
    SELECT SUM(amount) as total_fines
      INTO p_res
      FROM fines
      JOIN book_loans
        ON fines.loan_id = book_loans.loan_id
     WHERE book_loans.member_id = p_member_id
       AND fines.paid = 0;
  END check_current_fines;

  PROCEDURE loan_book(p_book_id IN INTEGER, p_member_id IN INTEGER) is
  BEGIN
    UPDATE books SET quantity = quantity - 1 WHERE book_id = p_book_id;
  
    INSERT INTO book_loans
      (book_id, member_id)
    VALUES
      (p_book_id, p_member_id);
  END;

  PROCEDURE return_book(p_loan_id IN INTEGER, p_returned_date IN OUT DATE) is
  BEGIN
    UPDATE book_loans
       SET returned_date = p_returned_date
     WHERE loan_id = loan_id;
  END;

end lib_manager_package;
/
