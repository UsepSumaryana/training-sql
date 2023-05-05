-- Querying Data

select * from employees e;

select employeeNumber ,firstName ,lastName  from employees e;

select FLOOR(DATEDIFF('2016-01-01', orderDate) / 365) as perbedaan_tahun from orders o  ;

-- Sorting Data

select employeeNumber ,firstName ,lastName  from employees e order by employeeNumber;

select employeeNumber ,firstName ,lastName  from employees e order by employeeNumber desc;

-- Filtering Data

select distinct firstName  from employees e order by firstName desc ;

select distinct firstName, lastName  from employees e order by firstName, lastName desc ;

select employeeNumber ,firstName ,lastName  from employees e order by employeeNumber limit  5;

select employeeNumber ,firstName ,lastName  from employees e where firstName = 'Leslie' order by employeeNumber;

select * from orders o where year(orderDate) = 2004;

select * from orders o where year(orderDate) > 2004;

select * from orders o where year(orderDate) > 2004 and status = 'Shipped';

select * from orders o where status = 'Shipped' or status = 'On Hold';

select * from orders o where comments is null ;

select * from orderdetails o where quantityOrdered between 25 and 50;

select * from orderdetails o where productCode in ('S18_2248','S24_3969');

select * from customers c where customerName like '%Mini%';

-- Join

select productCode , count(productCode)  from orderdetails o group by productCode having count(productCode) >= 10;

select c.customerName from customers as c;

select o.orderDate , o.status, c.customerName from orders o inner join customers c on o.customerNumber = c.customerNumber ;

select o.orderDate , o.status, c.customerName from orders o left join customers c on o.customerNumber = c.customerNumber ;

-- Agregate

select avg(quantityOrdered) as 'Rata rata'  from orderdetails o ;

select round(avg(quantityOrdered), 2) as 'Rata rata'  from orderdetails o ;

select productCode , count(*)  from orderdetails o group by productCode;

-- Cursor

declare avgPriceCursor cursor for select AVG(priceEach) FROM orderdetails o ;
open avgPriceCursor;
fetch avgPriceCursor;
close avgPriceCursor;


