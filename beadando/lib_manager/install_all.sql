-- Install sequences
CREATE SEQUENCE books_seq START WITH 8000;
CREATE SEQUENCE members_seq START WITH 9000;
CREATE SEQUENCE book_loans_seq START WITH 10000;
CREATE SEQUENCE fines_seq START WITH 11000;

-- Install tables
@./table/tables.sql

@./table/tables_h.sql

-- Install types

-- Packages

-- Views
@./view/views.sql

-- Triggers

-- Recompile schema
BEGIN
  dbms_utility.compile_schema(schema => 'LIB_MANAGER');
END;
/

-- FK
-- Tabla data
