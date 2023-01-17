CREATE OR REPLACE PROCEDURE add_new_member(p_name            in VARCHAR2,
                                           p_address         IN VARCHAR2,
                                           p_phone_number    IN VARCHAR2,
                                           p_membership_type IN VARCHAR2) is
BEGIN
  INSERT INTO members
    (member_name, address, phone_number, membership_type)
  VALUES
    (p_name, p_address, p_phone_number, p_membership_type);
END;
/
