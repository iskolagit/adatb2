create or replace trigger books_insert
  BEFORE INSERT OR UPDATE on books
  for each row
begin
  IF :new.book_id IS NULL THEN
    :new.book_id := books_seq.nextval;
  END IF;
end books_insert;
/
