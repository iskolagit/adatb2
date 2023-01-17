create or replace trigger members_insert
  BEFORE INSERT OR UPDATE on members
  for each row
begin
  IF :new.member_id IS NULL THEN
    :new.member_id := members_seq.nextval;
  END IF;
end members_insert;
/
