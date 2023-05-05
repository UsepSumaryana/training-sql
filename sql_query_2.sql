-- DDL

--Create Table

CREATE TABLE customerdetails (
	customerid varchar(100) NULL,
	address varchar(100) NULL,
	gender varchar(100) NULL,
	CONSTRAINT customerdetails_pk PRIMARY KEY (customerid)
);

-- Alter table add new column

ALTER TABLE customerdetails ADD Age varchar(100) NULL;

-- ALter table modyfy column data type

ALTER TABLE customerdetails MODIFY COLUMN Age INT NULL;

-- ALter table drop column

ALTER TABLE customerdetails DROP COLUMN Age;

-- Alter table add constraint

ALTER TABLE customerdetails ADD CONSTRAINT customerdetails_un UNIQUE KEY (customerNumber);

-- Alter table drop constraint

ALTER TABLE customerdetails DROP CONSTRAINT customerdetails_un;

-- Truncate Table

TRUNCATE TABLE customerdetails;

-- DROP Table

DROP TABLE customerdetails;


-- DML 

-- Insert 

INSERT INTO customers
(customerNumber, customerName, contactLAStName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
VALUES(497, 'Usep', 'sumaryana', 'Sep', '82341234', 'sdfsdf', NULL, 'Bandung', NULL, NULL, 'Indonesia', 1370, 21000.00);

-- Update

UPDATE customers SET city = 'Jakarta' WHERE customerName = 'Usep';

-- Delete

DELETE FROM customers WHERE customerName = 'Usep';

-- Temporary table

CREATE TEMPORARY TABLE investor(NIK CHAR(10), name VARCHAR(50));

-- Agregate

SELECT avg(quantityOrdered) AS 'Rata rata'  FROM orderdetails o ;

SELECT round(avg(quantityOrdered), 2) AS 'Rata rata'  FROM orderdetails o ;

SELECT productCode , count(*)  FROM orderdetails o GROUP by productCode;

-- Cursor

DECLARE avgPriceCursor cursor for SELECT AVG(priceEach) FROM orderdetails o ;
OPEN avgPriceCursor;
FETCH avgPriceCursor;
CLOSE avgPriceCursor;


-- AliAS 

SELECT c.customerName as 'CUSTOMER NAME' FROM customers c;
