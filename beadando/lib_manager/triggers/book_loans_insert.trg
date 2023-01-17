create or replace trigger book_loans_insert
  before insert or update on book_loans
  for each row
begin
  IF :new.loan_id IS NULL THEN
    :new.loan_id := book_loans_seq.nextval;
  END IF;
end book_loans_insert;
/
