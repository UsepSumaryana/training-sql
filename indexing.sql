-- Create Index 

CREATE INDEX employees_firstName_IDX USING BTREE ON employees (firstName);

-- Drop Index

ALTER TABLE employees DROP INDEX employees_firstName_IDX;