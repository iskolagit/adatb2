create or replace trigger fines_insert
  before insert or update
  on fines 
  for each row
begin
    IF :new.fine_id IS NULL THEN
    :new.fine_id := fines_seq.nextval;
  END IF;
end fines_insert;
/
